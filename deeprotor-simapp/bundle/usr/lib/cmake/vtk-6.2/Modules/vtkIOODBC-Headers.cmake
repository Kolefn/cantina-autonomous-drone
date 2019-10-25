set(vtkIOODBC_HEADERS_LOADED 1)
set(vtkIOODBC_HEADERS "vtkODBCDatabase;vtkODBCQuery")

foreach(header ${vtkIOODBC_HEADERS})
  set(vtkIOODBC_HEADER_${header}_EXISTS 1)
endforeach()




