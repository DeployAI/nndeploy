# set
set(TMP_SOURCE)
set(TMP_OBJECT)
set(TMP_BINARY nntask_common_post_process_opencv)
set(TMP_DIRECTORY nntask)
set(TMP_DEPEND_LIBRARY)
set(TMP_SYSTEM_LIBRARY)
set(TMP_THIRD_PARTY_LIBRARY)

set(TMP_TEST_SOURCE)
set(TMP_TEST_OBJECT)

include_directories(${ROOT_PATH})

# TMP_SOURCE
file(GLOB_RECURSE TMP_SOURCE
  "${ROOT_PATH}/nntask/source/common/post_process/opencv/*.h"
  "${ROOT_PATH}/nntask/source/common/post_process/opencv/*.cc"
  )
file(GLOB_RECURSE TMP_TEST_SOURCE
  "${ROOT_PATH}/nntask/source/common/post_process/opencv/*_test.h"
  "${ROOT_PATH}/nntask/source/common/post_process/opencv/*_test.cc"
  )
list(REMOVE_ITEM TMP_SOURCE ${TMP_TEST_SOURCE})
list(APPEND SOURCE ${TMP_SOURCE})
message(STATUS    "OPENCV TMP_SOURCE ${TMP_SOURCE}")

# TMP_OBJECT

# TARGET
# add_library(${TMP_BINARY} ${NNDEPLOY_LIB_TYPE} ${TMP_SOURCE} ${TMP_OBJECT})

# TMP_DIRECTORY
# set_property(TARGET ${TMP_BINARY} PROPERTY FOLDER ${TMP_DIRECTORY})

# TMP_DEPEND_LIBRARY
list(APPEND DEPEND_LIBRARY ${TMP_DEPEND_LIBRARY}) 

# TMP_SYSTEM_LIBRARY
list(APPEND SYSTEM_LIBRARY ${TMP_SYSTEM_LIBRARY}) 

# TMP_THIRD_PARTY_LIBRARY
list(APPEND THIRD_PARTY_LIBRARY ${TMP_THIRD_PARTY_LIBRARY}) 

# install

# testcl
if(NNDEPLOY_ENABLE_TEST)
  list(APPEND TEST_SOURCE ${TMP_TEST_SOURCE})
  list(APPEND TEST_OBJECT ${TMP_TEST_OBJECT})
endif()

# unset
unset(TMP_SOURCE)
unset(TMP_OBJECT)
unset(TMP_BINARY)
unset(TMP_DIRECTORY)
unset(TMP_DEPEND_LIBRARY)
unset(TMP_SYSTEM_LIBRARY)
unset(TMP_THIRD_PARTY_LIBRARY)

unset(TMP_TEST_SOURCE)
unset(TMP_TEST_OBJECT)