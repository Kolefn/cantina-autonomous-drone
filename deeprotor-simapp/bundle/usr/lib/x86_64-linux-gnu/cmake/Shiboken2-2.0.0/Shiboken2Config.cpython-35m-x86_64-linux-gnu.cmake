#  SHIBOKEN_INCLUDE_DIR        - Directories to include to use SHIBOKEN
#  SHIBOKEN_LIBRARY            - Files to link against to use SHIBOKEN
#  SHIBOKEN_BINARY             - Executable name
#  SHIBOKEN_BUILD_TYPE         - Tells if Shiboken was compiled in Release or Debug mode.
#  SHIBOKEN_PYTHON_INTERPRETER - Python interpreter (regular or debug) to be used with the bindings.
#  SHIBOKEN_PYTHON_LIBRARIES   - Python libraries (regular or debug) Shiboken is linked against.

SET(SHIBOKEN_INCLUDE_DIR "/usr/include/shiboken2")
if(MSVC)
    SET(SHIBOKEN_LIBRARY "/usr/lib/x86_64-linux-gnu/libshiboken2.cpython-35m-x86_64-linux-gnu.lib")
elseif(CYGWIN)
    SET(SHIBOKEN_LIBRARY "/usr/lib/x86_64-linux-gnu/shiboken2.cpython-35m-x86_64-linux-gnu")
elseif(WIN32)
    SET(SHIBOKEN_LIBRARY "/usr/bin/libshiboken2.cpython-35m-x86_64-linux-gnu.so")
else()
    SET(SHIBOKEN_LIBRARY "/usr/lib/x86_64-linux-gnu/libshiboken2.cpython-35m-x86_64-linux-gnu.so")
endif()
SET(SHIBOKEN_PYTHON_INCLUDE_DIR "/usr/include/python3.5m")
SET(SHIBOKEN_PYTHON_INCLUDE_DIR "/usr/include/python3.5m")
SET(SHIBOKEN_PYTHON_INTERPRETER "/usr/bin/python3.5")
SET(SHIBOKEN_PYTHON_VERSION_MAJOR "3")
SET(SHIBOKEN_PYTHON_VERSION_MINOR "5")
SET(SHIBOKEN_PYTHON_VERSION_PATCH "1")
SET(SHIBOKEN_PYTHON_LIBRARIES "/usr/lib/x86_64-linux-gnu/libpython3.5m.so")
SET(SHIBOKEN_PYTHON_EXTENSION_SUFFIX ".cpython-35m-x86_64-linux-gnu")
message(STATUS "libshiboken built for Release")


set(SHIBOKEN_BINARY "/usr/bin/shiboken2")
