set(vtkWrappingTcl_LOADED 1)
set(vtkWrappingTcl_DEPENDS "vtkCommonCore;vtkTclTk;vtkWrappingTools;vtksys")
set(vtkWrappingTcl_LIBRARIES "vtkCommonCore;vtksys")
set(vtkWrappingTcl_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2;/usr/include/tcl")
set(vtkWrappingTcl_LIBRARY_DIRS "")
set(vtkWrappingTcl_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkWrappingTcl_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkWrappingTclHierarchy.txt")
set(vtkWrappingTcl_EXCLUDE_FROM_WRAPPING 1)

