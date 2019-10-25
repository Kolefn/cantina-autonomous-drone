set(vtkRenderingTk_LOADED 1)
set(vtkRenderingTk_DEPENDS "vtkInteractionImage;vtkInteractionStyle;vtkRenderingOpenGL;vtkTclTk")
set(vtkRenderingTk_LIBRARIES "vtkInteractionImage;vtkInteractionStyle;vtkRenderingOpenGL")
set(vtkRenderingTk_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkRenderingTk_LIBRARY_DIRS "")
set(vtkRenderingTk_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkRenderingTk_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkRenderingTkHierarchy.txt")
set(vtkRenderingTk_EXCLUDE_FROM_WRAPPING 1)

