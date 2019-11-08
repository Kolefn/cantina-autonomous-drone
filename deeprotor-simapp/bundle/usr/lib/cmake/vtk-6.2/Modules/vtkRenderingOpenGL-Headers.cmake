set(vtkRenderingOpenGL_HEADERS_LOADED 1)
set(vtkRenderingOpenGL_HEADERS "vtkCameraPass;vtkChooserPainter;vtkClearRGBPass;vtkClearZPass;vtkClipPlanesPainter;vtkCoincidentTopologyResolutionPainter;vtkColorMaterialHelper;vtkCompositePainter;vtkCompositePolyDataMapper2;vtkDataTransferHelper;vtkDefaultPainter;vtkDefaultPass;vtkDepthPeelingPass;vtkDisplayListPainter;vtkFrameBufferObject;vtkFrameBufferObject2;vtkGLSLShaderDeviceAdapter2;vtkGaussianBlurPass;vtkGenericOpenGLRenderWindow;vtkHardwareSelectionPolyDataPainter;vtkImageProcessingPass;vtkLightingPainter;vtkLightsPass;vtkLinesPainter;vtkOpaquePass;vtkOpenGLActor;vtkOpenGLCamera;vtkOpenGLClipPlanesPainter;vtkOpenGLCoincidentTopologyResolutionPainter;vtkOpenGLCompositePainter;vtkOpenGLDisplayListPainter;vtkOpenGLExtensionManager;vtkOpenGLGlyph3DMapper;vtkOpenGLHardwareSelector;vtkOpenGLHardwareSupport;vtkOpenGLImageMapper;vtkOpenGLImageSliceMapper;vtkOpenGLLabeledContourMapper;vtkOpenGLLight;vtkOpenGLLightMonitor;vtkOpenGLLightingPainter;vtkOpenGLModelViewProjectionMonitor;vtkOpenGLPainterDeviceAdapter;vtkOpenGLPolyDataMapper2D;vtkOpenGLProperty;vtkOpenGLRenderWindow;vtkOpenGLRenderer;vtkOpenGLRepresentationPainter;vtkOpenGLScalarsToColorsPainter;vtkOpenGLTexture;vtkOverlayPass;vtkPainter;vtkPainterPolyDataMapper;vtkPixelBufferObject;vtkPointsPainter;vtkPolyDataPainter;vtkPolygonsPainter;vtkPrimitivePainter;vtkRenderPass;vtkRenderPassCollection;vtkRenderbuffer;vtkRepresentationPainter;vtkScalarsToColorsPainter;vtkSequencePass;vtkShadowMapBakerPass;vtkShadowMapPass;vtkSobelGradientMagnitudePass;vtkStandardPolyDataPainter;vtkTStripsPainter;vtkTextureObject;vtkTranslucentPass;vtkUniformVariables;vtkValuePainter;vtkValuePass;vtkValuePasses;vtkVolumetricPass;vtkOpenGLPolyDataMapper;vtkXRenderWindowInteractor;vtkXOpenGLRenderWindow;vtkDummyGPUInfoList")

foreach(header ${vtkRenderingOpenGL_HEADERS})
  set(vtkRenderingOpenGL_HEADER_${header}_EXISTS 1)
endforeach()

set(vtkRenderingOpenGL_HEADER_vtkImageProcessingPass_ABSTRACT 1)
set(vtkRenderingOpenGL_HEADER_vtkOpenGLRenderWindow_ABSTRACT 1)
set(vtkRenderingOpenGL_HEADER_vtkPainter_ABSTRACT 1)
set(vtkRenderingOpenGL_HEADER_vtkPolyDataPainter_ABSTRACT 1)
set(vtkRenderingOpenGL_HEADER_vtkPrimitivePainter_ABSTRACT 1)
set(vtkRenderingOpenGL_HEADER_vtkRenderPass_ABSTRACT 1)


