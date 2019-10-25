if (urdfdom_CONFIG_INCLUDED)
  return()
endif()
set(urdfdom_CONFIG_INCLUDED TRUE)

set(urdfdom_INCLUDE_DIRS "/usr/include" "/usr/include" "/usr/include")

foreach(lib urdfdom_sensor;urdfdom_model_state;urdfdom_model;urdfdom_world)
  set(onelib "${lib}-NOTFOUND")
  find_library(onelib ${lib})
  if(NOT onelib)
    message(FATAL_ERROR "Library '${lib}' in package urdfdom is not installed properly")
  endif()
  list(APPEND urdfdom_LIBRARIES ${onelib})
endforeach()


foreach(dep urdfdom_headers;console_bridge)
  if(NOT ${dep}_FOUND)
    find_package(${dep})
  endif()
  list(APPEND urdfdom_INCLUDE_DIRS ${${dep}_INCLUDE_DIRS})
  list(APPEND urdfdom_LIBRARIES ${${dep}_LIBRARIES})
endforeach()
