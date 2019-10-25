set(vtkRenderingQt_LOADED 1)
set(vtkRenderingQt_DEPENDS "vtkFiltersSources;vtkFiltersTexture;vtkGUISupportQt;vtkRenderingLabel")
set(vtkRenderingQt_LIBRARIES "vtkRenderingQt")
set(vtkRenderingQt_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkRenderingQt_LIBRARY_DIRS "")
set(vtkRenderingQt_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkRenderingQt_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkRenderingQtHierarchy.txt")

if(NOT Qt5Widgets_DIR)
  set(Qt5Widgets_DIR "/usr/lib/x86_64-linux-gnu/cmake/Qt5Widgets")
endif()
find_package(Qt5Widgets REQUIRED QUIET)

