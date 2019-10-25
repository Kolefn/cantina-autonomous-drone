set(vtkIOMPIParallel_LOADED 1)
set(vtkIOMPIParallel_DEPENDS "vtkIOGeometry;vtkIOGeometry;vtkParallelMPI;vtksys")
set(vtkIOMPIParallel_LIBRARIES "vtkIOMPIParallel")
set(vtkIOMPIParallel_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkIOMPIParallel_LIBRARY_DIRS "")
set(vtkIOMPIParallel_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkIOMPIParallel_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkIOMPIParallelHierarchy.txt")
set(vtkIOMPIParallel_IMPLEMENTS "vtkIOGeometry")

