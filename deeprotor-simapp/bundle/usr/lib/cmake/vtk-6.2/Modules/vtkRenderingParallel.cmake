set(vtkRenderingParallel_LOADED 1)
set(vtkRenderingParallel_DEPENDS "vtkFiltersParallel;vtkIOImage;vtkParallelCore;vtkRenderingOpenGL")
set(vtkRenderingParallel_LIBRARIES "vtkRenderingParallel")
set(vtkRenderingParallel_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkRenderingParallel_LIBRARY_DIRS "")
set(vtkRenderingParallel_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkRenderingParallel_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkRenderingParallelHierarchy.txt")

