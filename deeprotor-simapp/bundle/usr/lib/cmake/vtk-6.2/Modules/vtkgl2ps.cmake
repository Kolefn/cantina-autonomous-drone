set(vtkgl2ps_LOADED 1)
set(vtkgl2ps_DEPENDS "vtkpng;vtkzlib")
set(vtkgl2ps_LIBRARIES "/usr/lib/libgl2ps.so")
set(vtkgl2ps_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2;/usr/include")
set(vtkgl2ps_LIBRARY_DIRS "")
set(vtkgl2ps_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkgl2ps_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkgl2psHierarchy.txt")
set(vtkgl2ps_EXCLUDE_FROM_WRAPPING 1)

