/*
   Modifications:
   1998-07-01 - Arnaldo Carvalho de Melo - GNU gettext instead of catgets
   1999-10-07 - Kurt Garloff		 - for -host and gws: prefer host names
						over networks (or even reject)
   2003-10-11 - Maik Broemme		 - gcc 3.x warnign fixes (default: break;)
 */

#include "config.h"

#if HAVE_AFINET
#include <asm/types.h>
#include <sys/param.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <arpa/nameser.h>
#include <net/route.h> /* realy broken */
#include <sys/ioctl.h>
#include <ctype.h>
#include <errno.h>
#include <netdb.h>
#include <resolv.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <asm-generic/param.h>
#include "version.h"
#include "net-support.h"
#include "pathnames.h"
#include "intl.h"
#include "net-features.h"
#include "util.h"

#if HAVE_NEW_ADDRT
#define mask_in_addr(x) (((struct sockaddr_in *)&((x).rt_genmask))->sin_addr.s_addr)
#define full_mask(x) (x)
#else
#define mask_in_addr(x) ((x).rt_genmask)
#define full_mask(x) (((struct sockaddr_in *)&(x))->sin_addr.s_addr)
#endif

extern struct aftype inet_aftype;

static int skfd = -1;


static int usage(void)
{
    fprintf(stderr, _("Usage: inet_route [-vF] del {-host|-net} Target[/prefix] [gw Gw] [metric M] [[dev] If]\n"));
    fprintf(stderr, _("       inet_route [-vF] add {-host|-net} Target[/prefix] [gw Gw] [metric M]\n"));
    fprintf(stderr, _("                              [netmask N] [mss Mss] [window W] [irtt I]\n"));
    fprintf(stderr, _("                              [mod] [dyn] [reinstate] [[dev] If]\n"));
    fprintf(stderr, _("       inet_route [-vF] add {-host|-net} Target[/prefix] [metric M] reject\n"));
    fprintf(stderr, _("       inet_route [-FC] flush      NOT supported\n"));
    return (E_USAGE);
}

static int INET_setroute(int action, int options, char **args)
{
    struct rtentry rt;
    char target[128], gateway[128] = "NONE", netmask[128] = "default";
    int xflag, isnet;

    xflag = 0;

    if (!strcmp(*args, "#net")) {
	xflag = 1;
	args++;
    } else if (!strcmp(*args, "#host")) {
	xflag = 2;
	args++;
    }
    if (*args == NULL)
	return (usage());

    safe_strncpy(target, *args++, (sizeof target));

    /* Clean out the RTREQ structure. */
    memset((char *) &rt, 0, sizeof(struct rtentry));

    /* Special hack for /prefix syntax */
    {
	union {
	    struct sockaddr_in m;
	    struct sockaddr d;
	} mask;
	int n;

	n = inet_aftype.getmask(target, &mask.d, netmask);
	if (n < 0)
	    return usage();
	else if (n)
	    rt.rt_genmask = full_mask(mask.d);
    }

    /* Prefer hostname lookup is -host flag was given */
    if ((isnet = inet_aftype.input((xflag!=2? 0: 256), target, &rt.rt_dst)) < 0) {
	inet_aftype.herror(target);
	return (1);
    }
    switch (xflag) {
    case 1:
       isnet = 1; break;
    case 2:
       isnet = 0; break;
    }

    /* Fill in the other fields. */
    rt.rt_flags = (RTF_UP | RTF_HOST);
    if (isnet)
	rt.rt_flags &= ~RTF_HOST;

    while (*args) {
	if (!strcmp(*args, "metric")) {
	    int metric;

	    args++;
	    if (!*args || !isdigit(**args))
		return (usage());
	    metric = atoi(*args);
#if HAVE_NEW_ADDRT
	    rt.rt_metric = metric + 1;
#else
	    ENOSUPP("inet_setroute", "NEW_ADDRT (metric)");
#endif
	    args++;
	    continue;
	}
	if (!strcmp(*args, "netmask")) {
	    struct sockaddr mask;

	    args++;
	    if (!*args || mask_in_addr(rt))
		return (usage());
	    safe_strncpy(netmask, *args, (sizeof netmask));
	    if ((isnet = inet_aftype.input(0, netmask, &mask)) < 0) {
		inet_aftype.herror(netmask);
		return (E_LOOKUP);
	    }
	    rt.rt_genmask = full_mask(mask);
	    args++;
	    continue;
	}
	if (!strcmp(*args, "gw") || !strcmp(*args, "gateway")) {
	    args++;
	    if (!*args)
		return (usage());
	    if (rt.rt_flags & RTF_GATEWAY)
		return (usage());
	    safe_strncpy(gateway, *args, (sizeof gateway));
	    if ((isnet = inet_aftype.input(256, gateway, &rt.rt_gateway)) < 0) {
		inet_aftype.herror(gateway);
		return (E_LOOKUP);
	    }
	    if (isnet) {
		fprintf(stderr, _("route: %s: cannot use a NETWORK as gateway!\n"),
			gateway);
		return (E_OPTERR);
	    }
	    rt.rt_flags |= RTF_GATEWAY;
	    args++;
	    continue;
	}
	if (!strcmp(*args, "mss") || !strcmp(*args,"mtu")) {
	    args++;
	    rt.rt_flags |= RTF_MSS;
	    if (!*args)
		return (usage());
	    rt.rt_mss = atoi(*args);
	    args++;
	    if (rt.rt_mss < 64 || rt.rt_mss > 65536) {
		fprintf(stderr, _("route: Invalid MSS/MTU.\n"));
		return (E_OPTERR);
	    }
	    continue;
	}
	if (!strcmp(*args, "window")) {
	    args++;
	    if (!*args)
		return (usage());
	    rt.rt_flags |= RTF_WINDOW;
	    rt.rt_window = atoi(*args);
	    args++;
	    if (rt.rt_window < 128) {
		fprintf(stderr, _("route: Invalid window.\n"));
		return (E_OPTERR);
	    }
	    continue;
	}
	if (!strcmp(*args, "irtt")) {
	    args++;
	    if (!*args)
		return (usage());
	    args++;
#if HAVE_RTF_IRTT
	    rt.rt_flags |= RTF_IRTT;
	    rt.rt_irtt = atoi(*(args - 1));
	    rt.rt_irtt *= (HZ / 100);	/* FIXME */
#if 0				/* FIXME: do we need to check anything of this? */
	    if (rt.rt_irtt < 1 || rt.rt_irtt > (120 * HZ)) {
		fprintf(stderr, _("route: Invalid initial rtt.\n"));
		return (E_OPTERR);
	    }
#endif
#else
	    ENOSUPP("inet_setroute", "RTF_IRTT");
#endif
	    continue;
	}
	if (!strcmp(*args, "reject")) {
	    args++;
#if HAVE_RTF_REJECT
	    rt.rt_flags |= RTF_REJECT;
#else
	    ENOSUPP("inet_setroute", "RTF_REJECT");
#endif
	    continue;
	}
	if (!strcmp(*args, "mod")) {
	    args++;
	    rt.rt_flags |= RTF_MODIFIED;
	    continue;
	}
	if (!strcmp(*args, "dyn")) {
	    args++;
	    rt.rt_flags |= RTF_DYNAMIC;
	    continue;
	}
	if (!strcmp(*args, "reinstate")) {
	    args++;
	    rt.rt_flags |= RTF_REINSTATE;
	    continue;
	}
	if (!strcmp(*args, "device") || !strcmp(*args, "dev")) {
	    args++;
	    if (rt.rt_dev || *args == NULL)
		return usage();
	    rt.rt_dev = *args++;
	    continue;
	}
	/* nothing matches */
	if (!rt.rt_dev) {
	    rt.rt_dev = *args++;
	    if (*args)
		return usage();	/* must be last to catch typos */
	} else
	    return usage();
    }

#if HAVE_RTF_REJECT
    if ((rt.rt_flags & RTF_REJECT) && !rt.rt_dev)
	rt.rt_dev = "lo";
#endif

    /* sanity checks.. */
    if (mask_in_addr(rt)) {
	__u32 mask = ~ntohl(mask_in_addr(rt));
	if ((rt.rt_flags & RTF_HOST) && mask != 0xffffffff) {
	    fprintf(stderr, _("route: netmask %.8x doesn't make sense with host route\n"), mask);
	    return (E_OPTERR);
	}
	if (mask & (mask + 1)) {
	    fprintf(stderr, _("route: bogus netmask %s\n"), netmask);
	    return (E_OPTERR);
	}
	mask = ((struct sockaddr_in *) &rt.rt_dst)->sin_addr.s_addr;
	if (mask & ~mask_in_addr(rt)) {
	    fprintf(stderr, _("route: netmask doesn't match route address\n"));
	    return (E_OPTERR);
	}
    }
    /* Fill out netmask if still unset */
    if ((action == RTACTION_ADD) && rt.rt_flags & RTF_HOST)
	mask_in_addr(rt) = 0xffffffff;

    /* Create a socket to the INET kernel. */
    if ((skfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0) {
	perror("socket");
	return (E_SOCK);
    }
    /* Tell the kernel to accept this route. */
    if (action == RTACTION_DEL) {
	if (ioctl(skfd, SIOCDELRT, &rt) < 0) {
	    perror("SIOCDELRT");
	    close(skfd);
	    return (E_SOCK);
	}
    } else {
	if (ioctl(skfd, SIOCADDRT, &rt) < 0) {
	    perror("SIOCADDRT");
	    close(skfd);
	    return (E_SOCK);
	}
    }

    /* Close the socket. */
    (void) close(skfd);
    return (0);
}

int INET_rinput(int action, int options, char **args)
{
    if (action == RTACTION_FLUSH) {
	fprintf(stderr, _("Flushing `inet' routing table not supported\n"));
	return (usage());
    }
    if (options & FLAG_CACHE) {
	fprintf(stderr, _("Modifying `inet' routing cache not supported\n"));
	return (usage());
    }
    if ((*args == NULL) || (action == RTACTION_HELP))
	return (usage());

    return (INET_setroute(action, options, args));
}
#endif				/* HAVE_AFINET */
