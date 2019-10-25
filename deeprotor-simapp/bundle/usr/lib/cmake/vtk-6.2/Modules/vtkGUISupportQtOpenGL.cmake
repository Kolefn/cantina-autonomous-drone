set(vtkGUISupportQtOpenGL_LOADED 1)
set(vtkGUISupportQtOpenGL_DEPENDS "vtkGUISupportQt;vtkRenderingOpenGL")
set(vtkGUISupportQtOpenGL_LIBRARIES "vtkGUISupportQtOpenGL")
set(vtkGUISupportQtOpenGL_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkGUISupportQtOpenGL_LIBRARY_DIRS "")
set(vtkGUISupportQtOpenGL_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkGUISupportQtOpenGL_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkGUISupportQtOpenGLHierarchy.txt")
set(vtkGUISupportQtOpenGL_EXCLUDE_FROM_WRAPPING 1)

if(NOT Qt5OpenGL_DIR)
  set(Qt5OpenGL_DIR "/usr/lib/x86_64-linux-gnu/cmake/Qt5OpenGL")
endif()
find_package(Qt5OpenGL REQUIRED QUIET)

