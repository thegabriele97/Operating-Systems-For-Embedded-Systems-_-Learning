/* ###*B*###
 * Erika Enterprise, version 3
 * 
 * Copyright (C) 2017 - 2019 Evidence s.r.l.
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License, version 2, for more details.
 * 
 * You should have received a copy of the GNU General Public License,
 * version 2, along with this program; if not, see
 * <www.gnu.org/licenses/old-licenses/gpl-2.0.html >.
 * 
 * This program is distributed to you subject to the following
 * clarifications and special exceptions to the GNU General Public
 * License, version 2.
 * 
 * THIRD PARTIES' MATERIALS
 * 
 * Certain materials included in this library are provided by third
 * parties under licenses other than the GNU General Public License. You
 * may only use, copy, link to, modify and redistribute this library
 * following the terms of license indicated below for third parties'
 * materials.
 * 
 * In case you make modified versions of this library which still include
 * said third parties' materials, you are obligated to grant this special
 * exception.
 * 
 * The complete list of Third party materials allowed with ERIKA
 * Enterprise version 3, together with the terms and conditions of each
 * license, is present in the file THIRDPARTY.TXT in the root of the
 * project.
 * ###*E*### */

/** \file   ee_get_kernel_and_core.h
 *  \brief  HAL internal.
 *
 *  This files contains kernel and core entry points data structures retrieving
 *  and locking functions.
 *
 *  \author Errico Guidieri
 *  \author Giuseppe Serano
 *  \date 2016
 */

#ifndef OSEE_GET_CURRENT_CORE_H
#define OSEE_GET_CURRENT_CORE_H

#include "ee_platform_types.h"
#include "ee_kernel_types.h"

#if (defined(__cplusplus))
extern "C" {
#endif

extern OsEE_KDB osEE_kdb_var;
extern OsEE_CDB osEE_cdb_var;
extern OsEE_KCB osEE_kcb_var;
extern OsEE_CCB osEE_ccb_var;

#if (defined(OSEE_API_DYNAMIC))
extern OsEE_TCB   osEE_tcb_array[OSEE_TASK_ARRAY_SIZE + OsNumberOfCores];
extern OsEE_SN    osEE_sn_array[OSEE_SN_ARRAY_SIZE];
extern OsEE_TDB   osEE_tdb_array[OSEE_TASK_ARRAY_SIZE + OsNumberOfCores];
extern OsEE_TDB * osEE_tdb_ptr_array[OSEE_TASK_ARRAY_SIZE + OsNumberOfCores];
#endif /* OSEE_API_DYNAMIC */

OSEE_STATIC_INLINE OsEE_CDB * osEE_get_curr_core(void) {
  return &osEE_cdb_var;
}

OSEE_STATIC_INLINE OsEE_CDB * osEE_get_core(CoreIdType core_id) {
  (void)core_id;
  return &osEE_cdb_var;
}

OSEE_STATIC_INLINE OsEE_KDB * osEE_get_kernel(void) {
  return &osEE_kdb_var;
}

OSEE_STATIC_INLINE void osEE_lock_kernel(void) {}

OSEE_STATIC_INLINE OsEE_KDB * osEE_lock_and_get_kernel(void) {
  osEE_lock_kernel ();
  return osEE_get_kernel();
}

OSEE_STATIC_INLINE void osEE_unlock_kernel(void) {}

OSEE_STATIC_INLINE CoreIdType osEE_lock_and_get_curr_core_id(void) {
  return 0;
}

OSEE_STATIC_INLINE void osEE_lock_core_id(CoreIdType core_id) {
  (void)core_id;
}

OSEE_STATIC_INLINE void osEE_lock_core(OsEE_CDB * const p_cdb) {
  (void)p_cdb;
}

OSEE_STATIC_INLINE OsEE_CDB * osEE_lock_and_get_core(CoreIdType core_id) {
  (void)core_id;
  return osEE_get_curr_core();
}

OSEE_STATIC_INLINE OsEE_CDB * osEE_lock_and_get_curr_core(void) {
  return osEE_get_curr_core();
}

OSEE_STATIC_INLINE void osEE_unlock_core_id(CoreIdType core_id) {
  (void)core_id;
}

OSEE_STATIC_INLINE void osEE_unlock_core(OsEE_CDB * const p_cdb) {
  (void)p_cdb;
}

OSEE_STATIC_INLINE void osEE_unlock_curr_core(void) {}

#if (defined(__cplusplus))
}
#endif

#endif /* OSEE_GET_CURRENT_CORE_H */
