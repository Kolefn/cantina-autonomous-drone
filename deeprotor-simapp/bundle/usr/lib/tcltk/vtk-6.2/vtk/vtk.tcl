foreach kit ${vtk::init::kits} {
  package require -exact vtk${kit} 6.2
}

# Invoke DeleteAllObjects on exit

rename ::exit ::vtk::exit
proc ::exit {{returnCode 0}} {
    vtkCommand DeleteAllObjects
    return [::vtk::exit $returnCode]
}

# Automagically add a ExitEvent callback to an vtkRWI object
proc AddExitEventCallback {cmd code result op} {
    if {$code == 0} {
        $result AddObserver ExitEvent ::exit
    }
}

trace add execution vtkRenderWindowInteractor leave AddExitEventCallback

package provide vtk 6.2
