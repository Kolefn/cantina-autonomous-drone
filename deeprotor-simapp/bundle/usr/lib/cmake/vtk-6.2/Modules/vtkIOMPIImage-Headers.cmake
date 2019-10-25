set(vtkIOMPIImage_HEADERS_LOADED 1)
set(vtkIOMPIImage_HEADERS "vtkPNrrdReader;vtkMPIImageReader")

foreach(header ${vtkIOMPIImage_HEADERS})
  set(vtkIOMPIImage_HEADER_${header}_EXISTS 1)
endforeach()




