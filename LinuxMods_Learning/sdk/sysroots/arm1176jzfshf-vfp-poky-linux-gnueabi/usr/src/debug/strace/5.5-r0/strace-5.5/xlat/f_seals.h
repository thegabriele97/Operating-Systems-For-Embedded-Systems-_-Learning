/* Generated by ./xlat/gen.sh from ./xlat/f_seals.in; do not edit. */

#include "gcc_compat.h"
#include "static_assert.h"

#if defined(F_SEAL_SEAL) || (defined(HAVE_DECL_F_SEAL_SEAL) && HAVE_DECL_F_SEAL_SEAL)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((F_SEAL_SEAL) == (1), "F_SEAL_SEAL != 1");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define F_SEAL_SEAL 1
#endif
#if defined(F_SEAL_SHRINK) || (defined(HAVE_DECL_F_SEAL_SHRINK) && HAVE_DECL_F_SEAL_SHRINK)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((F_SEAL_SHRINK) == (2), "F_SEAL_SHRINK != 2");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define F_SEAL_SHRINK 2
#endif
#if defined(F_SEAL_GROW) || (defined(HAVE_DECL_F_SEAL_GROW) && HAVE_DECL_F_SEAL_GROW)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((F_SEAL_GROW) == (4), "F_SEAL_GROW != 4");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define F_SEAL_GROW 4
#endif
#if defined(F_SEAL_WRITE) || (defined(HAVE_DECL_F_SEAL_WRITE) && HAVE_DECL_F_SEAL_WRITE)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((F_SEAL_WRITE) == (8), "F_SEAL_WRITE != 8");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define F_SEAL_WRITE 8
#endif
#if defined(F_SEAL_FUTURE_WRITE) || (defined(HAVE_DECL_F_SEAL_FUTURE_WRITE) && HAVE_DECL_F_SEAL_FUTURE_WRITE)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((F_SEAL_FUTURE_WRITE) == (16), "F_SEAL_FUTURE_WRITE != 16");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define F_SEAL_FUTURE_WRITE 16
#endif

#ifndef XLAT_MACROS_ONLY

# ifdef IN_MPERS

#  error static const struct xlat f_seals in mpers mode

# else

static const struct xlat_data f_seals_xdata[] = {
 XLAT(F_SEAL_SEAL),
 XLAT(F_SEAL_SHRINK),
 XLAT(F_SEAL_GROW),
 XLAT(F_SEAL_WRITE),
 XLAT(F_SEAL_FUTURE_WRITE),
};
static
const struct xlat f_seals[1] = { {
 .data = f_seals_xdata,
 .size = ARRAY_SIZE(f_seals_xdata),
 .type = XT_NORMAL,
} };

# endif /* !IN_MPERS */

#endif /* !XLAT_MACROS_ONLY */