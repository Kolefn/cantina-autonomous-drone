#----------------------------------------------------------------
# Generated CMake target import file for configuration "None".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "aws_common" for configuration "None"
set_property(TARGET aws_common APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(aws_common PROPERTIES
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libaws_common.so"
  IMPORTED_SONAME_NONE "libaws_common.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS aws_common )
list(APPEND _IMPORT_CHECK_FILES_FOR_aws_common "${_IMPORT_PREFIX}/lib/libaws_common.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
