#----------------------------------------------------------------
# Generated CMake target import file for configuration "NONE".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "netcdf" for configuration "NONE"
set_property(TARGET netcdf APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(netcdf PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE ""
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libnetcdf.so.11.0.0"
  IMPORTED_SONAME_NONE "libnetcdf.so.11"
  )

list(APPEND _IMPORT_CHECK_TARGETS netcdf )
list(APPEND _IMPORT_CHECK_FILES_FOR_netcdf "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libnetcdf.so.11.0.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
