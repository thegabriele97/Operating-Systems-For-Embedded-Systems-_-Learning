/* Generated by ./xlat/gen.sh from ./xlat/bpf_src.in; do not edit. */

#include "gcc_compat.h"
#include "static_assert.h"

#if defined(BPF_K) || (defined(HAVE_DECL_BPF_K) && HAVE_DECL_BPF_K)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((BPF_K) == (0x00), "BPF_K != 0x00");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define BPF_K 0x00
#endif
#if defined(BPF_X) || (defined(HAVE_DECL_BPF_X) && HAVE_DECL_BPF_X)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((BPF_X) == (0x08), "BPF_X != 0x08");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define BPF_X 0x08
#endif

#ifndef XLAT_MACROS_ONLY

# ifdef IN_MPERS

#  error static const struct xlat bpf_src in mpers mode

# else

static const struct xlat_data bpf_src_xdata[] = {
 XLAT(BPF_K),
 XLAT(BPF_X),
};
static
const struct xlat bpf_src[1] = { {
 .data = bpf_src_xdata,
 .size = ARRAY_SIZE(bpf_src_xdata),
 .type = XT_NORMAL,
} };

# endif /* !IN_MPERS */

#endif /* !XLAT_MACROS_ONLY */