#----------------------------------------------------------------
# Generated CMake target import file for configuration "None".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "h264_encoder_core" for configuration "None"
set_property(TARGET h264_encoder_core APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(h264_encoder_core PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "avcodec;avutil;swscale;dl"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libh264_encoder_core.so"
  IMPORTED_SONAME_NONE "libh264_encoder_core.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS h264_encoder_core )
list(APPEND _IMPORT_CHECK_FILES_FOR_h264_encoder_core "${_IMPORT_PREFIX}/lib/libh264_encoder_core.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
