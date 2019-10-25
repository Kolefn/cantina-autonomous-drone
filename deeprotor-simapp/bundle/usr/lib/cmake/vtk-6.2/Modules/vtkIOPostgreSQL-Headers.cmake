set(vtkIOPostgreSQL_HEADERS_LOADED 1)
set(vtkIOPostgreSQL_HEADERS "vtkPostgreSQLDatabase;vtkPostgreSQLQuery;vtkPostgreSQLToTableReader;vtkTableToPostgreSQLWriter")

foreach(header ${vtkIOPostgreSQL_HEADERS})
  set(vtkIOPostgreSQL_HEADER_${header}_EXISTS 1)
endforeach()




