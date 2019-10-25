set(vtkIOMPIImage_LOADED 1)
set(vtkIOMPIImage_DEPENDS "vtkIOImage;vtkIOImage;vtkParallelMPI;vtksys")
set(vtkIOMPIImage_LIBRARIES "vtkIOMPIImage")
set(vtkIOMPIImage_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkIOMPIImage_LIBRARY_DIRS "")
set(vtkIOMPIImage_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkIOMPIImage_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkIOMPIImageHierarchy.txt")
set(vtkIOMPIImage_IMPLEMENTS "vtkIOImage")

