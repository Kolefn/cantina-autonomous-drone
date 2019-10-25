""" This module loads the entire VTK library into its namespace.  It
also allows one to use specific packages inside the vtk directory.."""

import os
import sys


# The dl module is used to force the symbols in the loaded VTK modules to
# be global, that is, to force symbols to be shared between modules.  This
# used to be necessary in VTK 4 but might not be with VTK 5 and later.

# The first "except" is because systems like AIX don't have the dl module.
# The second "except" is because the dl module raises a system error on
# ia64 and x86_64 systems because "int" and addresses are different sizes.
try:
    import dl
except ImportError:
    # do not give up too early:
    # are we on AMD64 ?
    try:
      import DLFCN as dl
    except ImportError:
      dl = None
except SystemError:
    dl = None

# set the dlopen flags so that VTK does not run into problems with
# shared symbols.
try:
    # only Python >= 2.2 has this functionality
    orig_dlopen_flags = sys.getdlopenflags()
except AttributeError:
    orig_dlopen_flags = None

if dl and (os.name == 'posix'):
    sys.setdlopenflags(dl.RTLD_NOW|dl.RTLD_GLOBAL)

# --------------------------------------
from vtkCommonCore import *
from vtkCommonMath import *
from vtkCommonMisc import *
from vtkCommonSystem import *
from vtkCommonTransforms import *
from vtkCommonDataModel import *
from vtkCommonColor import *
from vtkCommonExecutionModel import *
from vtkFiltersCore import *
from vtkCommonComputationalGeometry import *
from vtkFiltersGeneral import *
from vtkImagingCore import *
from vtkImagingFourier import *
from vtkFiltersStatistics import *
from vtkFiltersExtraction import *
from vtkInfovisCore import *
from vtkFiltersGeometry import *
from vtkFiltersSources import *
from vtkRenderingCore import *
from vtkRenderingFreeType import *
from vtkRenderingContext2D import *
from vtkChartsCore import *
from vtkIOCore import *
from vtkIOGeometry import *
from vtkIOXMLParser import *
from vtkIOXML import *
from vtkDomainsChemistry import *
from vtkIOLegacy import *
from vtkParallelCore import *
from vtkFiltersAMR import *
from vtkFiltersFlowPaths import *
from vtkFiltersGeneric import *
from vtkImagingSources import *
from vtkFiltersHybrid import *
from vtkFiltersHyperTree import *
from vtkImagingGeneral import *
from vtkFiltersImaging import *
from vtkFiltersModeling import *
from vtkFiltersParallel import *
from vtkParallelMPI import *
from vtkFiltersParallelFlowPaths import *
from vtkFiltersParallelGeometry import *
from vtkFiltersParallelImaging import *
from vtkFiltersParallelMPI import *
from vtkFiltersParallelStatistics import *
from vtkFiltersProgrammable import *
from vtkFiltersPython import *
from vtkFiltersReebGraph import *
from vtkFiltersSMP import *
from vtkFiltersSelection import *
from vtkFiltersTexture import *
from vtkFiltersVerdict import *
from vtkInteractionStyle import *
from vtkIOImage import *
from vtkImagingHybrid import *
from vtkRenderingOpenGL import *
from vtkIOSQL import *
from vtkInfovisLayout import *
from vtkRenderingLabel import *
from vtkImagingColor import *
from vtkRenderingAnnotation import *
from vtkRenderingVolume import *
from vtkInteractionWidgets import *
from vtkViewsCore import *
from vtkViewsInfovis import *
from vtkGeovisCore import *
from vtkIOAMR import *
from vtkIOEnSight import *
from vtkIOExodus import *
from vtkRenderingContextOpenGL import *
from vtkRenderingGL2PS import *
from vtkIOExport import *
from vtkIOMovie import *
from vtkIOFFMPEG import *
from vtkIOGDAL import *
from vtkIOGeoJSON import *
from vtkIOImport import *
from vtkIOInfovis import *
from vtkIOLSDyna import *
from vtkIOMINC import *
from vtkIOMPIImage import *
from vtkIOMPIParallel import *
from vtkIOMySQL import *
from vtkIONetCDF import *
from vtkIOODBC import *
from vtkIOPLY import *
from vtkIOParallel import *
from vtkIOParallelExodus import *
from vtkIOParallelLSDyna import *
from vtkIOParallelNetCDF import *
from vtkIOParallelXML import *
from vtkIOPostgreSQL import *
from vtkIOVPIC import *
from vtkIOVideo import *
from vtkIOXdmf2 import *
from vtkImagingMath import *
from vtkImagingMorphological import *
from vtkImagingStatistics import *
from vtkImagingStencil import *
from vtkInfovisBoostGraphAlgorithms import *
from vtkInteractionImage import *
from vtkParallelMPI4Py import *
from vtkPythonInterpreter import *
from vtkRenderingExternal import *
from vtkRenderingFreeTypeOpenGL import *
from vtkRenderingImage import *
from vtkRenderingLIC import *
from vtkRenderingLOD import *
from vtkRenderingMatplotlib import *
from vtkRenderingParallel import *
from vtkRenderingParallelLIC import *
from vtkRenderingQt import *
from vtkRenderingVolumeOpenGL import *
from vtkTestingRendering import *
from vtkViewsContext2D import *
from vtkViewsGeovis import *
# --------------------------------------

# useful macro for getting type names
__vtkTypeNameDict = {VTK_VOID:"void",
                     VTK_DOUBLE:"double",
                     VTK_FLOAT:"float",
                     VTK_LONG:"long",
                     VTK_UNSIGNED_LONG:"unsigned long",
                     VTK_INT:"int",
                     VTK_UNSIGNED_INT:"unsigned int",
                     VTK_SHORT:"short",
                     VTK_UNSIGNED_SHORT:"unsigned short",
                     VTK_CHAR:"char",
                     VTK_UNSIGNED_CHAR:"unsigned char",
                     VTK_SIGNED_CHAR:"signed char",
                     VTK_LONG_LONG:"long long",
                     VTK_UNSIGNED_LONG_LONG:"unsigned long long",
                     VTK___INT64:"__int64",
                     VTK_UNSIGNED___INT64:"unsigned __int64",
                     VTK_ID_TYPE:"vtkIdType",
                     VTK_BIT:"bit"}

def vtkImageScalarTypeNameMacro(type):
  return __vtkTypeNameDict[type]

# import convenience decorators
from util.misc import calldata_type

# import the vtkVariant helpers
from util.vtkVariant import *

# reset the dlopen flags to the original state if possible.
if dl and (os.name == 'posix') and orig_dlopen_flags:
    sys.setdlopenflags(orig_dlopen_flags)

# removing things the user shouldn't have to see.
del orig_dlopen_flags
del sys, dl, os
