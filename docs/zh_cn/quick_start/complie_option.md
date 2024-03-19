# 编译选项说明


| 编译选项 |  说明  | 默认值 |
| :-- |  :-- |--: |
| ENABLE_NNDEPLOY_BUILD_SHARED |  是否编译为动态库 | ON |
| ENABLE_NNDEPLOY_SYMBOL_HIDE | 是否隐藏符号表 | ON |
| ENABLE_NNDEPLOY_CXX11_ABI |  是否选择C++版本为C++11 | ON |
| ENABLE_NNDEPLOY_CXX14_ABI | 是否选择C++版本为C++14 | OFF |
| ENABLE_NNDEPLOY_CXX17_ABI |  是否选择C++版本为C++17 | OFF |
| ENABLE_NNDEPLOY_CXX20_ABI | 是否选择C++版本为C++20 | OFF |
| ENABLE_NNDEPLOY_OPENCV |  是否链接第三方库[opencv]((https://github.com/opencv/opencv)) | OFF |
| NNDEPLOY_OPENCV_LIBS | 链接到具体的opencv编译库名称 | 仅在ENABLE_NNDEPLOY_OPENCV为ON时生效，例如opencv_world480，opencv_java4等，在linux下则无需设置 |
| ENABLE_NNDEPLOY_BASE |  是否编译base目录中的文件 |  ON |
| ENABLE_NNDEPLOY_THREAD_POOL |   是否编译thread_pool目录中文件| ON |
| ENABLE_NNDEPLOY_CRYPTION | 是否编译crytion目录中文件 | ON |
| ENABLE_NNDEPLOY_DEVICE |  是否编译device目录中文件 | ON |
| ENABLE_NNDEPLOY_DEVICE_CPU | 是否使能cpu设备 | OFF |
| ENABLE_NNDEPLOY_OP |  是否编译op目录中文件 | OFF |
| ENABLE_NNDEPLOY_OP_NN | 是否编译op nn录中文件 | OFF |
| ENABLE_NNDEPLOY_OP_CV |  是否编译op cv录中文件 | OFF |
| ENABLE_NNDEPLOY_OP_AUDIO | 是否编译op audio录中文件 | OFF |
| ENABLE_NNDEPLOY_FORWARD |  是否编译forward目录中文件 |  OFF |
| ENABLE_NNDEPLOY_INFERENCE | 是否编译inference目录中文件 | ON |
| ENABLE_NNDEPLOY_DAG |  是否编译dag目录中文件 | ON |
| ENABLE_NNDEPLOY_CODEC | 是否编译编解码库 | ON |
| ENABLE_NNDEPLOY_MODEL |  是否编译model目录中文件 | ON |
| ENABLE_NNDEPLOY_DEMO | 是否开启可执行程序demo | ON |


### 全功能编译选项

| 编译选项 |  说明  | 默认值 |
| :-- |  :-- | --: |
| ENABLE_NNDEPLOY_COVERAGE |  是否使能代码覆盖率分析 | OFF |
| ENABLE_NNDEPLOY_ADDRESS_SANTIZER |  是否开启内存泄漏检测 | OFF |
| ENABLE_NNDEPLOY_TIME_PROFILER | 是否开启时间性能Profile | ON |
| ENABLE_NNDEPLOY_TEST |  是否开启单元测试 | OFF |

### 检测类模型
| 编译选项 |  说明  | 默认值 |
| :-- |  :-- | --: |
| ENABLE_NNDEPLOY_MODEL_DETECT | 是否使能检测类模型 | OFF
| ENABLE_NNDEPLOY_MODEL_DETECT_DETR |  是否使能检测类 DETR 模型 | OFF |
| ENABLE_NNDEPLOY_MODEL_DETECT_YOLO |  是否使能检测类 YOLO 模型 | OFF |

### 分割类模型
| 编译选项 |  说明  | 默认值 |
| :-- |  :-- | --: |
| ENABLE_NNDEPLOY_MODEL_SEGMENT | 是否使能分割类模型 | OFF 
| ENABLE_NNDEPLOY_MODEL_SEGMENT_SEGMENT_ANYTHING |  是否使能分割类 SEGMENT_ANYTHING 模型 | OFF 

## 部分平台相关编译选项

| 编译选项 |  说明  | 适用平台 | 默认值 |
| :-- |  :-- | --: | --: |
| ENABLE_NNDEPLOY_OPENMP |  是否使用OpenMP | ARMLinux / X86 | ON |
| ENABLE_NNDEPLOY_DEVICE_ARM |   是否使能device arm | ARMLinux | OFF |
| ENABLE_NNDEPLOY_DEVICE_X86 |   是否使能device x86 | X86 | OFF |
| ENABLE_NNDEPLOY_DEVICE_CUDA |   是否使能device cuda | CUDA | OFF |
| ENABLE_NNDEPLOY_DEVICE_CUDNN |   是否使能device cudnn | CUDA | OFF |
| ENABLE_NNDEPLOY_DEVICE_OPENCL |   是否使能device opencl | OpenCL | OFF |
| ENABLE_NNDEPLOY_DEVICE_OPENGL |   是否使能device opengl | OpenGL | OFF |
| ENABLE_NNDEPLOY_DEVICE_METAL |   是否使能device metal | MAC / iOS | OFF |
| ENABLE_NNDEPLOY_DEVICE_APPLE_NPU |   是否使能device apple npu | MAC / iOS | OFF |
| ENABLE_NNDEPLOY_DEVICE_HVX | 是否使能device apple hvx | MAC / iOS |OFF |
| ENABLE_NNDEPLOY_DEVICE_APPLE_NPU |   是否使能device apple npu | MAC / iOS | OFF |
| ENABLE_NNDEPLOY_DEVICE_MTK_VPU | 是否使能device apple hvx | MAC / iOS |OFF |
| ENABLE_NNDEPLOY_DEVICE_ASCEND_CL |  是否使能device apple ascend cl | MAC / iOS |ON |
| ENABLE_NNDEPLOY_INFERENCE_TENSORRT |   是否使能INFERENCE [TENSORRT](https://github.com/NVIDIA/TensorRT) | TENSORRT | OFF |
| ENABLE_NNDEPLOY_INFERENCE_OPENVINO |   是否使能INFERENCE [OPENVINO](https://github.com/openvinotoolkit/openvino) | OPENVINO | OFF |
| ENABLE_NNDEPLOY_INFERENCE_COREML |   是否使能INFERENCE [COREML](https://github.com/apple/coremltools) | COREML | OFF |
| ENABLE_NNDEPLOY_INFERENCE_TFLITE |   是否使能INFERENCE [TFLITE](https://github.com/tensorflow/tflite-micro) | TFLITE | OFF |
| ENABLE_NNDEPLOY_INFERENCE_ONNXRUNTIME |   是否使能INFERENCE [ONNXRUNTIME](https://github.com/microsoft/onnxruntime) | ONNXRUNTIME | OFF |
| ENABLE_NNDEPLOY_INFERENCE_NCNN |   是否使能INFERENCE [NCNN](https://github.com/Tencent/ncnn/) | NCNN | OFF |
| ENABLE_NNDEPLOY_INFERENCE_TNN |   是否使能INFERENCE [TNN]((https://github.com/Tencent/TNN)) | TNN | OFF |
| ENABLE_NNDEPLOY_INFERENCE_MNN |   是否使能INFERENCE [MNN]((https://github.com/alibaba/MNN)) | MNN | OFF
| ENABLE_NNDEPLOY_INFERENCE_TVM |   是否使能INFERENCE [TVM](https://github.com/apache/tvm) | TVM | OFF |
| ENABLE_NNDEPLOY_INFERENCE_PADDLELITE |   是否使能INFERENCE [PADDLELITE](https://github.com/PaddlePaddle/Paddle-Lite) | PADDLELITE | OFF |
| ENABLE_NNDEPLOY_INFERENCE_RKNN_TOOLKIT_1 |   是否使能INFERENCE [RKNN_TOOLKIT_1](https://github.com/rockchip-linux/rknn-toolkit) | RKNN_TOOLKIT_1 | OFF |
| ENABLE_NNDEPLOY_INFERENCE_RKNN_TOOLKIT_2 |   是否使能INFERENCE [RKNN_TOOLKIT_2](https://github.com/rockchip-linux/rknn-toolkit2) | RKNN_TOOLKIT_2 | OFF
| ENABLE_NNDEPLOY_INFERENCE_ASCEND_CL |   是否使能INFERENCE ASCEND_CL | ASCEND_CL | OFF