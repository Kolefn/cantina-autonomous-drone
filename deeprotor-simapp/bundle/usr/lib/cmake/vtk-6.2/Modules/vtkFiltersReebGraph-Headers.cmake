set(vtkFiltersReebGraph_HEADERS_LOADED 1)
set(vtkFiltersReebGraph_HEADERS "vtkReebGraphSimplificationFilter;vtkReebGraphSurfaceSkeletonFilter;vtkReebGraphToJoinSplitTreeFilter;vtkReebGraphVolumeSkeletonFilter;vtkUnstructuredGridToReebGraphFilter")

foreach(header ${vtkFiltersReebGraph_HEADERS})
  set(vtkFiltersReebGraph_HEADER_${header}_EXISTS 1)
endforeach()




