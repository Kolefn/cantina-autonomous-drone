package require -exact vtkrenderingcore 6.2
package require -exact vtkrenderingopengl 6.2

# We need Tk to implement the interactive features.
package require Tk

# Load the interaction features.
foreach s {Interactor bindings-rw bindings-iw bindings setget} {
  source [file join [file dirname [info script]] "${s}.tcl"]
}

package provide vtkinteraction 6.2
