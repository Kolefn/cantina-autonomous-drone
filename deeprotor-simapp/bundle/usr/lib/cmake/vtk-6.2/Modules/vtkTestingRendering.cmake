set(vtkTestingRendering_LOADED 1)
set(vtkTestingRendering_DEPENDS "vtkIOImage;vtkImagingCore;vtkRenderingCore;vtkTestingCore;vtksys")
set(vtkTestingRendering_LIBRARIES "vtkTestingRendering")
set(vtkTestingRendering_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkTestingRendering_LIBRARY_DIRS "")
set(vtkTestingRendering_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}//usr/lib/x86_64-linux-gnu")
set(vtkTestingRendering_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkTestingRenderingHierarchy.txt")

