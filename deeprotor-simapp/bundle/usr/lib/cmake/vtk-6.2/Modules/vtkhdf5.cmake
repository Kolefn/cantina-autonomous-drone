set(vtkhdf5_LOADED 1)
set(vtkhdf5_DEPENDS "vtkzlib")
set(vtkhdf5_LIBRARIES "/usr/lib/x86_64-linux-gnu/hdf5/openmpi/lib/libhdf5.so;/usr/lib/x86_64-linux-gnu/libsz.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libdl.so;/usr/lib/x86_64-linux-gnu/libm.so;/usr/lib/x86_64-linux-gnu/hdf5/openmpi/lib/libhdf5_hl.so;/usr/lib/x86_64-linux-gnu/hdf5/openmpi/lib/libhdf5.so;/usr/lib/x86_64-linux-gnu/libsz.so;/usr/lib/x86_64-linux-gnu/libz.so;/usr/lib/x86_64-linux-gnu/libdl.so;/usr/lib/x86_64-linux-gnu/libm.so;/usr/lib/openmpi/lib/libmpi.so")
set(vtkhdf5_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2;/usr/include/hdf5/openmpi;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent/include;/usr/lib/openmpi/include;/usr/lib/openmpi/include/openmpi")
set(vtkhdf5_LIBRARY_DIRS "")
set(vtkhdf5_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkhdf5_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkhdf5Hierarchy.txt")
set(vtkhdf5_EXCLUDE_FROM_WRAPPING 1)

