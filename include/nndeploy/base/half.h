
#ifndef _NNDEPLOY_BASE_HALF_H_
#define _NNDEPLOY_BASE_HALF_H_

#include "nndeploy/base/glic_stl_include.h"
#include "nndeploy/base/macro.h"

namespace nndeploy {
namespace base {

extern NNDEPLOY_CC_API bool convertFromFloatToBfp16(float *fp32, void *bfp16,
                                                    int count);

extern NNDEPLOY_CC_API bool convertFromBfp16ToFloat(void *bfp16, float *fp32,
                                                    int count);

extern NNDEPLOY_CC_API bool convertFromFloatToFp16(float *fp32, void *fp16,
                                                   int count);

extern NNDEPLOY_CC_API bool convertFromFp16ToFloat(void *fp16, float *fp32,
                                                   int count);

}  // namespace base
}  // namespace nndeploy

#endif
