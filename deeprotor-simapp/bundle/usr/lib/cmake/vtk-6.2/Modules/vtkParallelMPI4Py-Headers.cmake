set(vtkParallelMPI4Py_HEADERS_LOADED 1)
set(vtkParallelMPI4Py_HEADERS "vtkMPI4PyCommunicator")

foreach(header ${vtkParallelMPI4Py_HEADERS})
  set(vtkParallelMPI4Py_HEADER_${header}_EXISTS 1)
endforeach()




