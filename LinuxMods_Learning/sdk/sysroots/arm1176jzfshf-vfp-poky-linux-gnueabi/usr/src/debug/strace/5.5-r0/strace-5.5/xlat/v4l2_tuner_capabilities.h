/* Generated by ./xlat/gen.sh from ./xlat/v4l2_tuner_capabilities.in; do not edit. */

#include "gcc_compat.h"
#include "static_assert.h"

#if defined(V4L2_TUNER_CAP_LOW) || (defined(HAVE_DECL_V4L2_TUNER_CAP_LOW) && HAVE_DECL_V4L2_TUNER_CAP_LOW)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_LOW) == (0x0001), "V4L2_TUNER_CAP_LOW != 0x0001");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_LOW 0x0001
#endif
#if defined(V4L2_TUNER_CAP_NORM) || (defined(HAVE_DECL_V4L2_TUNER_CAP_NORM) && HAVE_DECL_V4L2_TUNER_CAP_NORM)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_NORM) == (0x0002), "V4L2_TUNER_CAP_NORM != 0x0002");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_NORM 0x0002
#endif
#if defined(V4L2_TUNER_CAP_HWSEEK_BOUNDED) || (defined(HAVE_DECL_V4L2_TUNER_CAP_HWSEEK_BOUNDED) && HAVE_DECL_V4L2_TUNER_CAP_HWSEEK_BOUNDED)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_HWSEEK_BOUNDED) == (0x0004), "V4L2_TUNER_CAP_HWSEEK_BOUNDED != 0x0004");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_HWSEEK_BOUNDED 0x0004
#endif
#if defined(V4L2_TUNER_CAP_HWSEEK_WRAP) || (defined(HAVE_DECL_V4L2_TUNER_CAP_HWSEEK_WRAP) && HAVE_DECL_V4L2_TUNER_CAP_HWSEEK_WRAP)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_HWSEEK_WRAP) == (0x0008), "V4L2_TUNER_CAP_HWSEEK_WRAP != 0x0008");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_HWSEEK_WRAP 0x0008
#endif
#if defined(V4L2_TUNER_CAP_STEREO) || (defined(HAVE_DECL_V4L2_TUNER_CAP_STEREO) && HAVE_DECL_V4L2_TUNER_CAP_STEREO)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_STEREO) == (0x0010), "V4L2_TUNER_CAP_STEREO != 0x0010");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_STEREO 0x0010
#endif
#if defined(V4L2_TUNER_CAP_LANG2) || (defined(HAVE_DECL_V4L2_TUNER_CAP_LANG2) && HAVE_DECL_V4L2_TUNER_CAP_LANG2)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_LANG2) == (0x0020), "V4L2_TUNER_CAP_LANG2 != 0x0020");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_LANG2 0x0020
#endif
#if defined(V4L2_TUNER_CAP_LANG1) || (defined(HAVE_DECL_V4L2_TUNER_CAP_LANG1) && HAVE_DECL_V4L2_TUNER_CAP_LANG1)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_LANG1) == (0x0040), "V4L2_TUNER_CAP_LANG1 != 0x0040");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_LANG1 0x0040
#endif
#if defined(V4L2_TUNER_CAP_RDS) || (defined(HAVE_DECL_V4L2_TUNER_CAP_RDS) && HAVE_DECL_V4L2_TUNER_CAP_RDS)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_RDS) == (0x0080), "V4L2_TUNER_CAP_RDS != 0x0080");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_RDS 0x0080
#endif
#if defined(V4L2_TUNER_CAP_RDS_BLOCK_IO) || (defined(HAVE_DECL_V4L2_TUNER_CAP_RDS_BLOCK_IO) && HAVE_DECL_V4L2_TUNER_CAP_RDS_BLOCK_IO)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_RDS_BLOCK_IO) == (0x0100), "V4L2_TUNER_CAP_RDS_BLOCK_IO != 0x0100");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_RDS_BLOCK_IO 0x0100
#endif
#if defined(V4L2_TUNER_CAP_RDS_CONTROLS) || (defined(HAVE_DECL_V4L2_TUNER_CAP_RDS_CONTROLS) && HAVE_DECL_V4L2_TUNER_CAP_RDS_CONTROLS)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_RDS_CONTROLS) == (0x0200), "V4L2_TUNER_CAP_RDS_CONTROLS != 0x0200");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_RDS_CONTROLS 0x0200
#endif
#if defined(V4L2_TUNER_CAP_FREQ_BANDS) || (defined(HAVE_DECL_V4L2_TUNER_CAP_FREQ_BANDS) && HAVE_DECL_V4L2_TUNER_CAP_FREQ_BANDS)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_FREQ_BANDS) == (0x0400), "V4L2_TUNER_CAP_FREQ_BANDS != 0x0400");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_FREQ_BANDS 0x0400
#endif
#if defined(V4L2_TUNER_CAP_HWSEEK_PROG_LIM) || (defined(HAVE_DECL_V4L2_TUNER_CAP_HWSEEK_PROG_LIM) && HAVE_DECL_V4L2_TUNER_CAP_HWSEEK_PROG_LIM)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_HWSEEK_PROG_LIM) == (0x0800), "V4L2_TUNER_CAP_HWSEEK_PROG_LIM != 0x0800");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_HWSEEK_PROG_LIM 0x0800
#endif
#if defined(V4L2_TUNER_CAP_1HZ) || (defined(HAVE_DECL_V4L2_TUNER_CAP_1HZ) && HAVE_DECL_V4L2_TUNER_CAP_1HZ)
DIAG_PUSH_IGNORE_TAUTOLOGICAL_COMPARE
static_assert((V4L2_TUNER_CAP_1HZ) == (0x1000), "V4L2_TUNER_CAP_1HZ != 0x1000");
DIAG_POP_IGNORE_TAUTOLOGICAL_COMPARE
#else
# define V4L2_TUNER_CAP_1HZ 0x1000
#endif

#ifndef XLAT_MACROS_ONLY

# ifdef IN_MPERS

extern const struct xlat v4l2_tuner_capabilities[];

# else

static const struct xlat_data v4l2_tuner_capabilities_xdata[] = {
 XLAT(V4L2_TUNER_CAP_LOW),
 XLAT(V4L2_TUNER_CAP_NORM),
 XLAT(V4L2_TUNER_CAP_HWSEEK_BOUNDED),
 XLAT(V4L2_TUNER_CAP_HWSEEK_WRAP),
 XLAT(V4L2_TUNER_CAP_STEREO),
 XLAT(V4L2_TUNER_CAP_LANG2),

 XLAT(V4L2_TUNER_CAP_LANG1),
 XLAT(V4L2_TUNER_CAP_RDS),
 XLAT(V4L2_TUNER_CAP_RDS_BLOCK_IO),
 XLAT(V4L2_TUNER_CAP_RDS_CONTROLS),
 XLAT(V4L2_TUNER_CAP_FREQ_BANDS),
 XLAT(V4L2_TUNER_CAP_HWSEEK_PROG_LIM),
 XLAT(V4L2_TUNER_CAP_1HZ),
};
#  if !(defined HAVE_M32_MPERS || defined HAVE_MX32_MPERS)
static
#  endif
const struct xlat v4l2_tuner_capabilities[1] = { {
 .data = v4l2_tuner_capabilities_xdata,
 .size = ARRAY_SIZE(v4l2_tuner_capabilities_xdata),
 .type = XT_NORMAL,
} };

# endif /* !IN_MPERS */

#endif /* !XLAT_MACROS_ONLY */