
include(ExternalProject)
# message(STATUS "ENABLE_NNDEPLOY_INFERENCE_TENSORRT: ${ENABLE_NNDEPLOY_INFERENCE_TENSORRT}")

if (ENABLE_NNDEPLOY_INFERENCE_TENSORRT STREQUAL "ON")
  set(NNDEPLOY_THIRD_PARTY_LIBRARY ${NNDEPLOY_THIRD_PARTY_LIBRARY} libnvinfer.so)
  set(NNDEPLOY_THIRD_PARTY_LIBRARY ${NNDEPLOY_THIRD_PARTY_LIBRARY} libnvinfer_plugin.so)
  set(NNDEPLOY_THIRD_PARTY_LIBRARY ${NNDEPLOY_THIRD_PARTY_LIBRARY} libnvparsers.so)
  set(NNDEPLOY_THIRD_PARTY_LIBRARY ${NNDEPLOY_THIRD_PARTY_LIBRARY} libnvonnxparser.so)
else()
  include_directories(${ENABLE_NNDEPLOY_INFERENCE_TENSORRT}/include)
  set(TENSORRT "TENSORRT")
  set(tmp_name ${NNDEPLOY_LIB_PREFIX}${TENSORRT}${NNDEPLOY_LIB_SUFFIX})
  set(tmp_path ${ENABLE_NNDEPLOY_INFERENCE_TENSORRT}/lib)
  set(full_name ${tmp_path}/${tmp_name})
  set(TMP_THIRD_PARTY_LIBRARY ${TMP_THIRD_PARTY_LIBRARY} ${full_name})
  file(GLOB_RECURSE install_libs "${tmp_path}/*")
  foreach(lib ${install_libs})
    install(FILES ${lib} DESTINATION ${NNDEPLOY_INSTALL_PATH})
  endforeach()
endif()