#--------------------------------------------------------------------
#  Template custom cmake cofffiguratioff for compiling
#
#  This file is used to override the build sets in build.
#  If you want to change the cofffiguratioff, please use the following
#  steps. Assume you are off the root directory. First copy the this
#  file so that any local changes will be ignored by git
#
#  $ mkdir build
#  $ cp cmake/cofffig.cmake build
#
#  Next modify the according entries, and then compile by
#
#  $ cd build
#  $ cmake ..
#
#  Then build in parallel with 8 threads
#
#  $ make -j8
#--------------------------------------------------------------------

# common
set(NNDEPLOY_ENABLE_BUILD_SHARED "" ON)
set(NNDEPLOY_ENABLE_SYMBOL_HIDE "" OFF)
set(NNDEPLOY_ENABLE_COVERAGE "" OFF)
set(NNDEPLOY_ENABLE_CXX11_ABI "" ON)
set(NNDEPLOY_ENABLE_CXX14_ABI "" OFF)
set(NNDEPLOY_ENABLE_OPENMP "" OFF)
set(NNDEPLOY_ENABLE_VALGRIND "" OFF)
set(NNDEPLOY_ENABLE_DOCS "" OFF)
set(NNDEPLOY_ENABLE_TEST "" OFF)
# nndeploy
set(NNDEPLOY_ENABLE_NNDEPLOY "" ON)
## base
set(NNDEPLOY_ENABLE_BASE "" ON)
## cryptioff
set(NNDEPLOY_ENABLE_CRYPTIOFF "" OFF)
## device
set(NNDEPLOY_ENABLE_DEVICE "" OFF)
set(NNDEPLOY_ENABLE_DEVICE_CPU "" OFF)
set(NNDEPLOY_ENABLE_DEVICE_ARM "" OFF)
set(NNDEPLOY_ENABLE_DEVICE_X86 "" OFF)
set(NNDEPLOY_ENABLE_DEVICE_CUDA "" OFF)
set(THIRD_PARTY_CUDA_DIRECTORY "" CACHE PATH "THIRD_PARTY_CUDA_DIRECTORY")
set(NNDEPLOY_ENABLE_DEVICE_OPENCL "" OFF)
set(THIRD_PARTY_OPENCL_DIRECTORY "" CACHE PATH "THIRD_PARTY_OPENCL_DIRECTORY")
set(NNDEPLOY_ENABLE_DEVICE_OPENGL "" OFF)
set(THIRD_PARTY_OPENGL_DIRECTORY "" CACHE PATH "THIRD_PARTY_OPENGL_DIRECTORY")
set(NNDEPLOY_ENABLE_DEVICE_METAL "" OFF)
set(THIRD_PARTY_METAL_DIRECTORY "" CACHE PATH "THIRD_PARTY_METAL_DIRECTORY")
set(NNDEPLOY_ENABLE_DEVICE_APPLE_NPU "" OFF)
set(THIRD_PARTY_APPLE_NPU_DIRECTORY "" CACHE PATH "THIRD_PARTY_APPLE_NPU_DIRECTORY")
## audio
set(NNDEPLOY_ENABLE_AUDIO "" OFF)
set(NNDEPLOY_ENABLE_AUDIO_CORE "" OFF)
## cv
set(NNDEPLOY_ENABLE_CV "" OFF)
set(NNDEPLOY_ENABLE_CV_CORE "" OFF)
## inference
set(NNDEPLOY_ENABLE_INFERENCE "" OFF)
set(NNDEPLOY_ENABLE_INFERENCE_DEFAULT "" OFF)
set(NNDEPLOY_ENABLE_INFERENCE_TENSORRT "" OFF)
set(THIRD_PARTY_TENSORRT_DIRECTORY "" CACHE PATH "THIRD_PARTY_TENSORRT_DIRECTORY")
set(NNDEPLOY_ENABLE_INFERENCE_OPENVINO "" OFF)
set(THIRD_PARTY_OPENVINO_DIRECTORY "" CACHE PATH "THIRD_PARTY_OPENVINO_DIRECTORY")
set(NNDEPLOY_ENABLE_INFERENCE_COREML "" OFF)
set(THIRD_PARTY_COREML_DIRECTORY "" CACHE PATH "THIRD_PARTY_COREML_DIRECTORY")
set(NNDEPLOY_ENABLE_INFERENCE_TFLITE  OFF)
set(THIRD_PARTY_TFLITE_DIRECTORY "" CACHE PATH "THIRD_PARTY_TFLITE_DIRECTORY")
set(NNDEPLOY_ENABLE_INFERENCE_TNN "" OFF)
set(THIRD_PARTY_TNN_DIRECTORY "" CACHE PATH "THIRD_PARTY_TNN_DIRECTORY")
## aicompiler
set(NNDEPLOY_ENABLE_AICOMPILER "" OFF)
set(NNDEPLOY_ENABLE_AICOMPILER_TVM  "" OFF)
set(THIRD_PARTY_TVM_DIRECTORY "" CACHE PATH "THIRD_PARTY_TVM_DIRECTORY")
## graph
set(NNDEPLOY_ENABLE_GRAPH "" OFF)
# nntask
set(NNDEPLOY_ENABLE_NNTASK "" OFF)