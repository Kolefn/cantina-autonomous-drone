set(vtkRenderingParallelLIC_LOADED 1)
set(vtkRenderingParallelLIC_DEPENDS "vtkIOLegacy;vtkParallelMPI;vtkRenderingLIC;vtkRenderingOpenGL")
set(vtkRenderingParallelLIC_LIBRARIES "vtkRenderingParallelLIC")
set(vtkRenderingParallelLIC_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkRenderingParallelLIC_LIBRARY_DIRS "")
set(vtkRenderingParallelLIC_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkRenderingParallelLIC_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkRenderingParallelLICHierarchy.txt")
set(vtkRenderingParallelLIC_IMPLEMENTS "vtkRenderingLIC")

