# Compute paths
set(h264_encoder_core_BASE_DIR "${CMAKE_CURRENT_LIST_DIR}/../../..")
set(h264_encoder_core_INCLUDE_DIRS "${h264_encoder_core_BASE_DIR}/include")

if(NOT TARGET h264_encoder_core)
  include("${CMAKE_CURRENT_LIST_DIR}/h264_encoder_core-targets.cmake")
endif()

set(h264_encoder_core_LIBRARIES h264_encoder_core)

# where the .pc pkgconfig files are installed
set(h264_encoder_core_PKGCONFIG_DIR "${h264_encoder_core_BASE_DIR}/lib/pkgconfig")
