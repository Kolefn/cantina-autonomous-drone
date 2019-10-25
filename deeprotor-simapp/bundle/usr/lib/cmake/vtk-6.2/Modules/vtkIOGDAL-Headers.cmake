set(vtkIOGDAL_HEADERS_LOADED 1)
set(vtkIOGDAL_HEADERS "vtkGDAL;vtkGDALVectorReader;vtkGDALRasterReader")

foreach(header ${vtkIOGDAL_HEADERS})
  set(vtkIOGDAL_HEADER_${header}_EXISTS 1)
endforeach()




