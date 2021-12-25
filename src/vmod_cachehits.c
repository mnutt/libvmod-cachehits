#include "config.h"

#include <stdio.h>
#include <stdlib.h>

#include "cache/cache.h"

#include "vcc_cachehits_if.h"

VCL_INT
vmod_count(VRT_CTX) {
  CHECK_OBJ_NOTNULL(ctx, VRT_CTX_MAGIC);
  CHECK_OBJ_NOTNULL(ctx->bo, BUSYOBJ_MAGIC);

  if (ctx->bo->is_bgfetch == 1) {
    CHECK_OBJ_NOTNULL(ctx->bo->stale_oc, OBJCORE_MAGIC);

    return (int)ctx->bo->stale_oc->hits;
  }

  return 0;
}
