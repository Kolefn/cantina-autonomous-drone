#  PYSIDE_INCLUDE_DIR   - Directories to include to use PySide2
#  PYSIDE_LIBRARY       - Files to link against to use PySide2
#  PYSIDE_PYTHONPATH    - Path to where the PySide2 Python module files could be found
#  PYSIDE_TYPESYSTEMS   - Type system files that should be used by other bindings extending PySide2

SET(PYSIDE_INCLUDE_DIR "/usr/include/PySide2")
# Platform specific library names
if(MSVC)
    SET(PYSIDE_LIBRARY "/usr/lib/x86_64-linux-gnu/libpyside2-python2.7-x86_64-linux-gnu.lib")
elseif(CYGWIN)
    SET(PYSIDE_LIBRARY "/usr/lib/x86_64-linux-gnu/libpyside2-python2.7-x86_64-linux-gnu")
elseif(WIN32)
    SET(PYSIDE_LIBRARY "/usr/bin/libpyside2-python2.7-x86_64-linux-gnu.so")
else()
    SET(PYSIDE_LIBRARY "/usr/lib/x86_64-linux-gnu/libpyside2-python2.7-x86_64-linux-gnu.so")
endif()
SET(PYSIDE_PYTHONPATH "/usr/lib/python2.7/dist-packages")
SET(PYSIDE_TYPESYSTEMS "/usr/share/PySide2/typesystems")
