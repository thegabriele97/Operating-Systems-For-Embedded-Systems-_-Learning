/* Generated by ./xlat/gen.sh from ./xlat/packet_diag_attrs.in; do not edit. */

#include "gcc_compat.h"
#include "static_assert.h"


#ifndef XLAT_MACROS_ONLY

# ifdef IN_MPERS

#  error static const struct xlat packet_diag_attrs in mpers mode

# else

static const struct xlat_data packet_diag_attrs_xdata[] = {
 XLAT(PACKET_DIAG_INFO),
 XLAT(PACKET_DIAG_MCLIST),
 XLAT(PACKET_DIAG_RX_RING),
 XLAT(PACKET_DIAG_TX_RING),
 XLAT(PACKET_DIAG_FANOUT),
 XLAT(PACKET_DIAG_UID),
 XLAT(PACKET_DIAG_MEMINFO),
 XLAT(PACKET_DIAG_FILTER),
};
static
const struct xlat packet_diag_attrs[1] = { {
 .data = packet_diag_attrs_xdata,
 .size = ARRAY_SIZE(packet_diag_attrs_xdata),
 .type = XT_NORMAL,
} };

# endif /* !IN_MPERS */

#endif /* !XLAT_MACROS_ONLY */