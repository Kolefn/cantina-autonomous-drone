set(vtkIOPostgreSQL_LOADED 1)
set(vtkIOPostgreSQL_DEPENDS "vtkCommonDataModel;vtkIOSQL;vtksys")
set(vtkIOPostgreSQL_LIBRARIES "vtkIOPostgreSQL")
set(vtkIOPostgreSQL_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkIOPostgreSQL_LIBRARY_DIRS "")
set(vtkIOPostgreSQL_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkIOPostgreSQL_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkIOPostgreSQLHierarchy.txt")
set(vtkIOPostgreSQL_IMPLEMENTS "vtkIOSQL")

