/* Generated by ./xlat/gen.sh from ./xlat/uffd_copy_flags.in; do not edit. */

#include "gcc_compat.h"
#include "static_assert.h"


#ifndef XLAT_MACROS_ONLY

# ifdef IN_MPERS

#  error static const struct xlat uffd_copy_flags in mpers mode

# else

static const struct xlat_data uffd_copy_flags_xdata[] = {
#if defined(UFFDIO_COPY_MODE_DONTWAKE) || (defined(HAVE_DECL_UFFDIO_COPY_MODE_DONTWAKE) && HAVE_DECL_UFFDIO_COPY_MODE_DONTWAKE)
  XLAT_TYPE(uint64_t, UFFDIO_COPY_MODE_DONTWAKE),
#endif
};
static
const struct xlat uffd_copy_flags[1] = { {
 .data = uffd_copy_flags_xdata,
 .size = ARRAY_SIZE(uffd_copy_flags_xdata),
 .type = XT_NORMAL,
} };

# endif /* !IN_MPERS */

#endif /* !XLAT_MACROS_ONLY */