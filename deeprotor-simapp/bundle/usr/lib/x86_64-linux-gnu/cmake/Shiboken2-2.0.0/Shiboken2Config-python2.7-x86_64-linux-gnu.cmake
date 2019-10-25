#  SHIBOKEN_INCLUDE_DIR        - Directories to include to use SHIBOKEN
#  SHIBOKEN_LIBRARY            - Files to link against to use SHIBOKEN
#  SHIBOKEN_BINARY             - Executable name
#  SHIBOKEN_BUILD_TYPE         - Tells if Shiboken was compiled in Release or Debug mode.
#  SHIBOKEN_PYTHON_INTERPRETER - Python interpreter (regular or debug) to be used with the bindings.
#  SHIBOKEN_PYTHON_LIBRARIES   - Python libraries (regular or debug) Shiboken is linked against.

SET(SHIBOKEN_INCLUDE_DIR "/usr/include/shiboken2")
if(MSVC)
    SET(SHIBOKEN_LIBRARY "/usr/lib/x86_64-linux-gnu/libshiboken2-python2.7-x86_64-linux-gnu.lib")
elseif(CYGWIN)
    SET(SHIBOKEN_LIBRARY "/usr/lib/x86_64-linux-gnu/shiboken2-python2.7-x86_64-linux-gnu")
elseif(WIN32)
    SET(SHIBOKEN_LIBRARY "/usr/bin/libshiboken2-python2.7-x86_64-linux-gnu.so")
else()
    SET(SHIBOKEN_LIBRARY "/usr/lib/x86_64-linux-gnu/libshiboken2-python2.7-x86_64-linux-gnu.so")
endif()
SET(SHIBOKEN_PYTHON_INCLUDE_DIR "/usr/include/python2.7")
SET(SHIBOKEN_PYTHON_INCLUDE_DIR "/usr/include/python2.7")
SET(SHIBOKEN_PYTHON_INTERPRETER "/usr/bin/python2.7")
SET(SHIBOKEN_PYTHON_VERSION_MAJOR "2")
SET(SHIBOKEN_PYTHON_VERSION_MINOR "7")
SET(SHIBOKEN_PYTHON_VERSION_PATCH "11")
SET(SHIBOKEN_PYTHON_LIBRARIES "/usr/lib/x86_64-linux-gnu/libpython2.7.so")
SET(SHIBOKEN_PYTHON_EXTENSION_SUFFIX "-python2.7-x86_64-linux-gnu")
message(STATUS "libshiboken built for Release")


set(SHIBOKEN_BINARY "/usr/bin/shiboken2")
