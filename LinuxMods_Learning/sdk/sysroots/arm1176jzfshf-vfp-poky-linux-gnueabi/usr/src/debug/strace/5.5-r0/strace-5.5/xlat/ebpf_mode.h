/* Generated by ./xlat/gen.sh from ./xlat/ebpf_mode.in; do not edit. */

#include "gcc_compat.h"
#include "static_assert.h"

#if defined(BPF_IMM) || (defined(HAVE_DECL_BPF_IMM) && HAVE_DECL_BPF_IMM)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((BPF_IMM) == (0x00), "BPF_IMM != 0x00");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define BPF_IMM 0x00
#endif
#if defined(BPF_ABS) || (defined(HAVE_DECL_BPF_ABS) && HAVE_DECL_BPF_ABS)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((BPF_ABS) == (0x20), "BPF_ABS != 0x20");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define BPF_ABS 0x20
#endif
#if defined(BPF_IND) || (defined(HAVE_DECL_BPF_IND) && HAVE_DECL_BPF_IND)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((BPF_IND) == (0x40), "BPF_IND != 0x40");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define BPF_IND 0x40
#endif
#if defined(BPF_MEM) || (defined(HAVE_DECL_BPF_MEM) && HAVE_DECL_BPF_MEM)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((BPF_MEM) == (0x60), "BPF_MEM != 0x60");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define BPF_MEM 0x60
#endif
#if defined(BPF_XADD) || (defined(HAVE_DECL_BPF_XADD) && HAVE_DECL_BPF_XADD)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((BPF_XADD) == (0xc0), "BPF_XADD != 0xc0");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define BPF_XADD 0xc0
#endif

#ifndef XLAT_MACROS_ONLY

# ifdef IN_MPERS

#  error static const struct xlat ebpf_mode in mpers mode

# else

static const struct xlat_data ebpf_mode_xdata[] = {
 XLAT(BPF_IMM),
 XLAT(BPF_ABS),
 XLAT(BPF_IND),
 XLAT(BPF_MEM),
 XLAT(BPF_XADD),
};
static
const struct xlat ebpf_mode[1] = { {
 .data = ebpf_mode_xdata,
 .size = ARRAY_SIZE(ebpf_mode_xdata),
 .type = XT_NORMAL,
} };

# endif /* !IN_MPERS */

#endif /* !XLAT_MACROS_ONLY */