set(vtkIOSQL_LOADED 1)
set(vtkIOSQL_DEPENDS "vtkIOCore;vtksqlite;vtksys")
set(vtkIOSQL_LIBRARIES "vtkIOSQL")
set(vtkIOSQL_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkIOSQL_LIBRARY_DIRS "")
set(vtkIOSQL_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkIOSQL_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkIOSQLHierarchy.txt")
