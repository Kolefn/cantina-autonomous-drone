set(vtkParallelMPI4Py_LOADED 1)
set(vtkParallelMPI4Py_DEPENDS "vtkParallelMPI;vtkPython")
set(vtkParallelMPI4Py_LIBRARIES "vtkParallelMPI4Py")
set(vtkParallelMPI4Py_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent/include;/usr/lib/openmpi/include;/usr/lib/openmpi/include/openmpi")
set(vtkParallelMPI4Py_LIBRARY_DIRS "")
set(vtkParallelMPI4Py_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkParallelMPI4Py_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkParallelMPI4PyHierarchy.txt")

