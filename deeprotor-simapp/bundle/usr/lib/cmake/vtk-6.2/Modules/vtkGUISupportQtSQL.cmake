set(vtkGUISupportQtSQL_LOADED 1)
set(vtkGUISupportQtSQL_DEPENDS "vtkIOSQL;vtksys")
set(vtkGUISupportQtSQL_LIBRARIES "vtkGUISupportQtSQL")
set(vtkGUISupportQtSQL_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkGUISupportQtSQL_LIBRARY_DIRS "")
set(vtkGUISupportQtSQL_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkGUISupportQtSQL_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkGUISupportQtSQLHierarchy.txt")
set(vtkGUISupportQtSQL_EXCLUDE_FROM_WRAPPING 1)

if(NOT Qt5Widgets_DIR)
  set(Qt5Widgets_DIR "/usr/lib/x86_64-linux-gnu/cmake/Qt5Widgets")
endif()
find_package(Qt5Widgets REQUIRED QUIET)

if(NOT Qt5Sql_DIR)
  set(Qt5Sql_DIR "/usr/lib/x86_64-linux-gnu/cmake/Qt5Sql")
endif()
find_package(Qt5Sql REQUIRED QUIET)

