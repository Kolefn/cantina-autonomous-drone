set(vtkIOMySQL_HEADERS_LOADED 1)
set(vtkIOMySQL_HEADERS "vtkMySQLDatabase;vtkMySQLQuery;vtkMySQLToTableReader;vtkTableToMySQLWriter")

foreach(header ${vtkIOMySQL_HEADERS})
  set(vtkIOMySQL_HEADER_${header}_EXISTS 1)
endforeach()




