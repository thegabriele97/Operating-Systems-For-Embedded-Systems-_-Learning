/* Generated file (by generator) */

/*
 * Copyright (C) 2015 William Yu <williamyu@gnome.org>
 *
 * This library is free software: you can redistribute it and/or modify it
 * under the terms of version 2.1. of the GNU Lesser General Public License
 * as published by the Free Software Foundation.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License
 * for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library. If not, see <https://www.gnu.org/licenses/>.
 */

#if !defined (__LIBICAL_GLIB_H_INSIDE__) && !defined (LIBICAL_GLIB_COMPILATION)
#error "Only <libical-glib/libical-glib.h> can be included directly."
#endif

#ifndef I_CAL_ENUMS_H
#define I_CAL_ENUMS_H

#include <libical-glib/i-cal-forward-declarations.h>
#include <libical-glib/i-cal-object.h>

G_BEGIN_DECLS

typedef enum {
	I_CAL_NO_COMPONENT = ICAL_NO_COMPONENT,
	I_CAL_ANY_COMPONENT = ICAL_ANY_COMPONENT,
	I_CAL_XROOT_COMPONENT = ICAL_XROOT_COMPONENT,
	I_CAL_XATTACH_COMPONENT = ICAL_XATTACH_COMPONENT,
	I_CAL_VEVENT_COMPONENT = ICAL_VEVENT_COMPONENT,
	I_CAL_VTODO_COMPONENT = ICAL_VTODO_COMPONENT,
	I_CAL_VJOURNAL_COMPONENT = ICAL_VJOURNAL_COMPONENT,
	I_CAL_VCALENDAR_COMPONENT = ICAL_VCALENDAR_COMPONENT,
	I_CAL_VAGENDA_COMPONENT = ICAL_VAGENDA_COMPONENT,
	I_CAL_VFREEBUSY_COMPONENT = ICAL_VFREEBUSY_COMPONENT,
	I_CAL_VALARM_COMPONENT = ICAL_VALARM_COMPONENT,
	I_CAL_XAUDIOALARM_COMPONENT = ICAL_XAUDIOALARM_COMPONENT,
	I_CAL_XDISPLAYALARM_COMPONENT = ICAL_XDISPLAYALARM_COMPONENT,
	I_CAL_XEMAILALARM_COMPONENT = ICAL_XEMAILALARM_COMPONENT,
	I_CAL_XPROCEDUREALARM_COMPONENT = ICAL_XPROCEDUREALARM_COMPONENT,
	I_CAL_VTIMEZONE_COMPONENT = ICAL_VTIMEZONE_COMPONENT,
	I_CAL_XSTANDARD_COMPONENT = ICAL_XSTANDARD_COMPONENT,
	I_CAL_XDAYLIGHT_COMPONENT = ICAL_XDAYLIGHT_COMPONENT,
	I_CAL_X_COMPONENT = ICAL_X_COMPONENT,
	I_CAL_VSCHEDULE_COMPONENT = ICAL_VSCHEDULE_COMPONENT,
	I_CAL_VQUERY_COMPONENT = ICAL_VQUERY_COMPONENT,
	I_CAL_VREPLY_COMPONENT = ICAL_VREPLY_COMPONENT,
	I_CAL_VCAR_COMPONENT = ICAL_VCAR_COMPONENT,
	I_CAL_VCOMMAND_COMPONENT = ICAL_VCOMMAND_COMPONENT,
	I_CAL_XLICINVALID_COMPONENT = ICAL_XLICINVALID_COMPONENT,
	I_CAL_XLICMIMEPART_COMPONENT = ICAL_XLICMIMEPART_COMPONENT,
	I_CAL_VAVAILABILITY_COMPONENT = ICAL_VAVAILABILITY_COMPONENT,
	I_CAL_XAVAILABLE_COMPONENT = ICAL_XAVAILABLE_COMPONENT,
	I_CAL_VPOLL_COMPONENT = ICAL_VPOLL_COMPONENT,
	I_CAL_VVOTER_COMPONENT = ICAL_VVOTER_COMPONENT,
	I_CAL_XVOTE_COMPONENT = ICAL_XVOTE_COMPONENT
} ICalComponentKind;

typedef enum {
	I_CAL_UNKNOWN_STATUS = ICAL_UNKNOWN_STATUS,
	I_CAL_2_0_SUCCESS_STATUS = ICAL_2_0_SUCCESS_STATUS,
	I_CAL_2_1_FALLBACK_STATUS = ICAL_2_1_FALLBACK_STATUS,
	I_CAL_2_2_IGPROP_STATUS = ICAL_2_2_IGPROP_STATUS,
	I_CAL_2_3_IGPARAM_STATUS = ICAL_2_3_IGPARAM_STATUS,
	I_CAL_2_4_IGXPROP_STATUS = ICAL_2_4_IGXPROP_STATUS,
	I_CAL_2_5_IGXPARAM_STATUS = ICAL_2_5_IGXPARAM_STATUS,
	I_CAL_2_6_IGCOMP_STATUS = ICAL_2_6_IGCOMP_STATUS,
	I_CAL_2_7_FORWARD_STATUS = ICAL_2_7_FORWARD_STATUS,
	I_CAL_2_8_ONEEVENT_STATUS = ICAL_2_8_ONEEVENT_STATUS,
	I_CAL_2_9_TRUNC_STATUS = ICAL_2_9_TRUNC_STATUS,
	I_CAL_2_10_ONETODO_STATUS = ICAL_2_10_ONETODO_STATUS,
	I_CAL_2_11_TRUNCRRULE_STATUS = ICAL_2_11_TRUNCRRULE_STATUS,
	I_CAL_3_0_INVPROPNAME_STATUS = ICAL_3_0_INVPROPNAME_STATUS,
	I_CAL_3_1_INVPROPVAL_STATUS = ICAL_3_1_INVPROPVAL_STATUS,
	I_CAL_3_2_INVPARAM_STATUS = ICAL_3_2_INVPARAM_STATUS,
	I_CAL_3_3_INVPARAMVAL_STATUS = ICAL_3_3_INVPARAMVAL_STATUS,
	I_CAL_3_4_INVCOMP_STATUS = ICAL_3_4_INVCOMP_STATUS,
	I_CAL_3_5_INVTIME_STATUS = ICAL_3_5_INVTIME_STATUS,
	I_CAL_3_6_INVRULE_STATUS = ICAL_3_6_INVRULE_STATUS,
	I_CAL_3_7_INVCU_STATUS = ICAL_3_7_INVCU_STATUS,
	I_CAL_3_8_NOAUTH_STATUS = ICAL_3_8_NOAUTH_STATUS,
	I_CAL_3_9_BADVERSION_STATUS = ICAL_3_9_BADVERSION_STATUS,
	I_CAL_3_10_TOOBIG_STATUS = ICAL_3_10_TOOBIG_STATUS,
	I_CAL_3_11_MISSREQCOMP_STATUS = ICAL_3_11_MISSREQCOMP_STATUS,
	I_CAL_3_12_UNKCOMP_STATUS = ICAL_3_12_UNKCOMP_STATUS,
	I_CAL_3_13_BADCOMP_STATUS = ICAL_3_13_BADCOMP_STATUS,
	I_CAL_3_14_NOCAP_STATUS = ICAL_3_14_NOCAP_STATUS,
	I_CAL_3_15_INVCOMMAND = ICAL_3_15_INVCOMMAND,
	I_CAL_4_0_BUSY_STATUS = ICAL_4_0_BUSY_STATUS,
	I_CAL_4_1_STORE_ACCESS_DENIED = ICAL_4_1_STORE_ACCESS_DENIED,
	I_CAL_4_2_STORE_FAILED = ICAL_4_2_STORE_FAILED,
	I_CAL_4_3_STORE_NOT_FOUND = ICAL_4_3_STORE_NOT_FOUND,
	I_CAL_5_0_MAYBE_STATUS = ICAL_5_0_MAYBE_STATUS,
	I_CAL_5_1_UNAVAIL_STATUS = ICAL_5_1_UNAVAIL_STATUS,
	I_CAL_5_2_NOSERVICE_STATUS = ICAL_5_2_NOSERVICE_STATUS,
	I_CAL_5_3_NOSCHED_STATUS = ICAL_5_3_NOSCHED_STATUS,
	I_CAL_6_1_CONTAINER_NOT_FOUND = ICAL_6_1_CONTAINER_NOT_FOUND,
	I_CAL_9_0_UNRECOGNIZED_COMMAND = ICAL_9_0_UNRECOGNIZED_COMMAND
} ICalRequestStatus;


LIBICAL_ICAL_EXPORT
const gchar *	i_cal_request_status_desc	(ICalRequestStatus stat);

LIBICAL_ICAL_EXPORT
gshort 		i_cal_request_status_major	(ICalRequestStatus stat);

LIBICAL_ICAL_EXPORT
gshort 		i_cal_request_status_minor	(ICalRequestStatus stat);

LIBICAL_ICAL_EXPORT
ICalRequestStatus 
		i_cal_request_status_from_num	(gshort major,
						 gshort minor);

LIBICAL_ICAL_EXPORT
gchar *		i_cal_request_status_code	(ICalRequestStatus stat);

G_END_DECLS

#endif /* I_CAL_ENUMS_H */
