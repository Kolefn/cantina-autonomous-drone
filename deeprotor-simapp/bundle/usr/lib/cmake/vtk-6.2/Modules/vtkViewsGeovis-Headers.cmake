set(vtkViewsGeovis_HEADERS_LOADED 1)
set(vtkViewsGeovis_HEADERS "vtkGeoView;vtkGeoView2D")

foreach(header ${vtkViewsGeovis_HEADERS})
  set(vtkViewsGeovis_HEADER_${header}_EXISTS 1)
endforeach()




