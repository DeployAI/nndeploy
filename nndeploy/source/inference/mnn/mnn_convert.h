
#ifndef _NNDEPLOY_SOURCE_INFERENCE_MNN_MNN_CONVERT_H_
#define _NNDEPLOY_SOURCE_INFERENCE_MNN_MNN_CONVERT_H_

#include "nndeploy/source/base/basic.h"
#include "nndeploy/source/base/log.h"
#include "nndeploy/source/base/macro.h"
#include "nndeploy/source/base/status.h"
#include "nndeploy/source/device/device.h"
#include "nndeploy/source/device/tensor.h"
#include "nndeploy/source/inference/config.h"
#include "nndeploy/source/inference/mnn/mnn_include.h"
#include "nndeploy/source/inference/mnn/mnn_config.h"
#include "nndeploy/source/inference/mnn/mnn_inference_impl.h"

namespace nndeploy {
namespace inference {

class MnnConvert {
 public:
  static base::DataType convertToDataType(const halide_type_t &src);
  static halide_type_t convertFromDataType(base::DataType &src);

  static base::DataFormat convertToDataFormat(
      const MNN::Tensor::DimensionType &src);
  static MNN::Tensor::DimensionType convertFromDataFormat(
      const base::DataFormat &src);

  static MNNForwardType convertFromDeviceType(const base::DeviceType &src);

  static MNN::BackendConfig::PowerMode convertFromPowerType(
      const base::PowerType &src);

  static MNN::BackendConfig::PrecisionMode convertFromPowerType(
      const base::PrecisionType &src);

  static base::Status convertFromConfig(MnnConfigImpl *src,
                                        MNN::ScheduleConfig *dst);

  static device::Tensor *convertToTensor(MNN::Tensor *src, std::string name,
                                         device::Device *device);
  static MNN::Tensor *convertFromTensor(device::Tensor *src);
};

}  // namespace inference
}  // namespace nndeploy

#endif
