ROOT=../..

-include $(ROOT)/common.mk


################################################################################
### configure these:
################################################################################

#general compiler flags - note optimisation flags, and architecture
OGRE_OPT           ?= -DNDEBUG -O2 -finline-functions -funroll-loops
OGRE_DBG           ?=
OGRE_BASE_CXXFLAGS ?= -g -ffast-math $(GRIT_ARCH) -Wno-deprecated -Wfatal-errors -DVERSION=grit_ogre
OGRE_BASE_LDFLAGS  ?=
OGRE_BASE_LDLIBS   ?=


OGRE_CXXFLAGS += $(OGRE_BASE_CXXFLAGS)
OGRE_LDFLAGS  += $(OGRE_BASE_LDFLAGS)
OGRE_LDLIBS   += $(OGRE_BASE_LDLIBS)


################################################################################
### now the various groups of source code files
################################################################################

OGRE_SOURCE=OgreMain/src/OgreAlignedAllocator.cpp \
            OgreMain/src/OgreAnimable.cpp \
            OgreMain/src/OgreAnimation.cpp \
            OgreMain/src/OgreAnimationState.cpp \
            OgreMain/src/OgreAnimationTrack.cpp \
            OgreMain/src/OgreArchiveManager.cpp \
            OgreMain/src/OgreAutoParamDataSource.cpp \
            OgreMain/src/OgreAxisAlignedBox.cpp \
            OgreMain/src/OgreBillboardChain.cpp \
            OgreMain/src/OgreBillboard.cpp \
            OgreMain/src/OgreBillboardParticleRenderer.cpp \
            OgreMain/src/OgreBillboardSet.cpp \
            OgreMain/src/OgreBone.cpp \
            OgreMain/src/OgreCamera.cpp \
            OgreMain/src/OgreCodec.cpp \
            OgreMain/src/OgreColourValue.cpp \
            OgreMain/src/OgreCommon.cpp \
            OgreMain/src/OgreCompositionPass.cpp \
            OgreMain/src/OgreCompositionTargetPass.cpp \
            OgreMain/src/OgreCompositionTechnique.cpp \
            OgreMain/src/OgreCompositorChain.cpp \
            OgreMain/src/OgreCompositor.cpp \
            OgreMain/src/OgreCompositorInstance.cpp \
            OgreMain/src/OgreCompositorManager.cpp \
            OgreMain/src/OgreConfigFile.cpp \
            OgreMain/src/OgreControllerManager.cpp \
            OgreMain/src/OgreConvexBody.cpp \
            OgreMain/src/OgreDataStream.cpp \
            OgreMain/src/OgreDDSCodec.cpp \
            OgreMain/src/OgreDefaultHardwareBufferManager.cpp \
            OgreMain/src/OgreDefaultSceneQueries.cpp \
            OgreMain/src/OgreDepthBuffer.cpp \
            OgreMain/src/OgreDualQuaternion.cpp \
            OgreMain/src/Threading/OgreDefaultWorkQueueStandard.cpp \
            OgreMain/src/OgreDistanceLodStrategy.cpp \
            OgreMain/src/OgreDynLib.cpp \
            OgreMain/src/OgreDynLibManager.cpp \
            OgreMain/src/OgreEdgeListBuilder.cpp \
            OgreMain/src/OgreEntity.cpp \
            OgreMain/src/OgreETC1Codec.cpp \
            OgreMain/src/OgreException.cpp \
            OgreMain/src/OgreExternalTextureSource.cpp \
            OgreMain/src/OgreExternalTextureSourceManager.cpp \
            OgreMain/src/OgreFileSystem.cpp \
            OgreMain/src/OgreFreeImageCodec.cpp \
            OgreMain/src/OgreFrustum.cpp \
            OgreMain/src/OgreGpuProgram.cpp \
            OgreMain/src/OgreGpuProgramManager.cpp \
            OgreMain/src/OgreGpuProgramUsage.cpp \
            OgreMain/src/OgreGpuProgramParams.cpp \
            OgreMain/src/OgreHardwareBufferManager.cpp \
            OgreMain/src/OgreHardwareCounterBuffer.cpp \
            OgreMain/src/OgreHardwareIndexBuffer.cpp \
            OgreMain/src/OgreHardwareOcclusionQuery.cpp \
            OgreMain/src/OgreHardwarePixelBuffer.cpp \
            OgreMain/src/OgreHardwareVertexBuffer.cpp \
            OgreMain/src/OgreHardwareUniformBuffer.cpp \
            OgreMain/src/OgreHighLevelGpuProgram.cpp \
            OgreMain/src/OgreHighLevelGpuProgramManager.cpp \
            OgreMain/src/OgreImage.cpp \
            OgreMain/src/OgreInstanceBatch.cpp \
            OgreMain/src/OgreInstanceBatchVTF.cpp \
            OgreMain/src/OgreInstanceBatchShader.cpp \
            OgreMain/src/OgreInstanceBatchHW_VTF.cpp \
            OgreMain/src/OgreInstanceBatchHW.cpp \
            OgreMain/src/OgreInstanceManager.cpp \
            OgreMain/src/OgreInstancedGeometry.cpp \
            OgreMain/src/OgreInstancedEntity.cpp \
            OgreMain/src/OgreKeyFrame.cpp \
            OgreMain/src/OgreLight.cpp \
            OgreMain/src/OgreLodStrategy.cpp \
            OgreMain/src/OgreLodStrategyManager.cpp \
            OgreMain/src/OgreLog.cpp \
            OgreMain/src/OgreLogManager.cpp \
            OgreMain/src/OgreManualObject.cpp \
            OgreMain/src/OgreMaterial.cpp \
            OgreMain/src/OgreMaterialManager.cpp \
            OgreMain/src/OgreMaterialSerializer.cpp \
            OgreMain/src/OgreMath.cpp \
            OgreMain/src/OgreMatrix3.cpp \
            OgreMain/src/OgreMatrix4.cpp \
            OgreMain/src/OgreMemoryAllocatedObject.cpp \
            OgreMain/src/OgreMemoryNedAlloc.cpp \
            OgreMain/src/OgreMesh.cpp \
            OgreMain/src/OgreMeshManager.cpp \
            OgreMain/src/OgreMeshSerializer.cpp \
            OgreMain/src/OgreMeshSerializerImpl.cpp \
            OgreMain/src/OgreMovableObject.cpp \
            OgreMain/src/OgreMovablePlane.cpp \
            OgreMain/src/OgreNode.cpp \
            OgreMain/src/OgreNumerics.cpp \
            OgreMain/src/OgreOptimisedUtil.cpp \
            OgreMain/src/OgreOptimisedUtilGeneral.cpp \
            OgreMain/src/OgreOptimisedUtilSSE.cpp \
            OgreMain/src/OgreParticle.cpp \
            OgreMain/src/OgreParticleEmitterCommands.cpp \
            OgreMain/src/OgreParticleEmitter.cpp \
            OgreMain/src/OgreParticleIterator.cpp \
            OgreMain/src/OgreParticleSystem.cpp \
            OgreMain/src/OgreParticleSystemManager.cpp \
            OgreMain/src/OgrePass.cpp \
            OgreMain/src/OgrePatchMesh.cpp \
            OgreMain/src/OgrePatchSurface.cpp \
            OgreMain/src/OgrePixelCountLodStrategy.cpp \
            OgreMain/src/OgrePixelFormat.cpp \
            OgreMain/src/OgrePlane.cpp \
            OgreMain/src/OgrePlatformInformation.cpp \
            OgreMain/src/OgrePolygon.cpp \
            OgreMain/src/OgrePose.cpp \
            OgreMain/src/OgrePrecompiledHeaders.cpp \
            OgreMain/src/OgrePredefinedControllers.cpp \
            OgreMain/src/OgrePrefabFactory.cpp \
            OgreMain/src/OgreProfiler.cpp \
            OgreMain/src/OgreProgressiveMeshGenerator.cpp \
            OgreMain/src/OgrePVRTCCodec.cpp \
            OgreMain/src/OgreQuaternion.cpp \
            OgreMain/src/OgreQueuedProgressiveMeshGenerator.cpp \
            OgreMain/src/OgreRectangle2D.cpp \
            OgreMain/src/OgreRenderQueue.cpp \
            OgreMain/src/OgreRenderQueueInvocation.cpp \
            OgreMain/src/OgreRenderQueueSortingGrouping.cpp \
            OgreMain/src/OgreRenderSystemCapabilities.cpp \
            OgreMain/src/OgreRenderSystemCapabilitiesManager.cpp \
            OgreMain/src/OgreRenderSystemCapabilitiesSerializer.cpp \
            OgreMain/src/OgreRenderSystem.cpp \
            OgreMain/src/OgreRenderTarget.cpp \
            OgreMain/src/OgreRenderTexture.cpp \
            OgreMain/src/OgreRenderToVertexBuffer.cpp \
            OgreMain/src/OgreRenderWindow.cpp \
            OgreMain/src/OgreResourceBackgroundQueue.cpp \
            OgreMain/src/OgreResource.cpp \
            OgreMain/src/OgreResourceGroupManager.cpp \
            OgreMain/src/OgreResourceManager.cpp \
            OgreMain/src/OgreRibbonTrail.cpp \
            OgreMain/src/OgreRoot.cpp \
            OgreMain/src/OgreRotationSpline.cpp \
            OgreMain/src/OgreSceneManager.cpp \
            OgreMain/src/OgreSceneManagerEnumerator.cpp \
            OgreMain/src/OgreSceneNode.cpp \
            OgreMain/src/OgreSceneQuery.cpp \
            OgreMain/src/OgreScriptCompiler.cpp \
            OgreMain/src/OgreScriptLexer.cpp \
            OgreMain/src/OgreScriptParser.cpp \
            OgreMain/src/OgreScriptTranslator.cpp \
            OgreMain/src/OgreSearchOps.cpp \
            OgreMain/src/OgreSerializer.cpp \
            OgreMain/src/OgreShadowCameraSetup.cpp \
            OgreMain/src/OgreShadowCameraSetupFocused.cpp \
            OgreMain/src/OgreShadowCameraSetupLiSPSM.cpp \
            OgreMain/src/OgreShadowCameraSetupPlaneOptimal.cpp \
            OgreMain/src/OgreShadowCameraSetupPSSM.cpp \
            OgreMain/src/OgreShadowCaster.cpp \
            OgreMain/src/OgreShadowTextureManager.cpp \
            OgreMain/src/OgreShadowVolumeExtrudeProgram.cpp \
            OgreMain/src/OgreSimpleRenderable.cpp \
            OgreMain/src/OgreSimpleSpline.cpp \
            OgreMain/src/OgreSkeleton.cpp \
            OgreMain/src/OgreSkeletonInstance.cpp \
            OgreMain/src/OgreSkeletonManager.cpp \
            OgreMain/src/OgreSkeletonSerializer.cpp \
            OgreMain/src/OgreSmallVector.cpp \
            OgreMain/src/OgreStaticGeometry.cpp \
            OgreMain/src/OgreStringConverter.cpp \
            OgreMain/src/OgreString.cpp \
            OgreMain/src/OgreStringInterface.cpp \
            OgreMain/src/OgreSubEntity.cpp \
            OgreMain/src/OgreSubMesh.cpp \
            OgreMain/src/OgreTagPoint.cpp \
            OgreMain/src/OgreTangentSpaceCalc.cpp \
            OgreMain/src/OgreTechnique.cpp \
            OgreMain/src/OgreTexture.cpp \
            OgreMain/src/OgreTextureManager.cpp \
            OgreMain/src/OgreTextureUnitState.cpp \
            OgreMain/src/OgreUnifiedHighLevelGpuProgram.cpp \
            OgreMain/src/OgreUTFString.cpp \
            OgreMain/src/OgreUserObjectBindings.cpp \
            OgreMain/src/OgreVector2.cpp \
            OgreMain/src/OgreVector3.cpp \
            OgreMain/src/OgreVector4.cpp \
            OgreMain/src/OgreVertexIndexData.cpp \
            OgreMain/src/OgreViewport.cpp \
            OgreMain/src/OgreWorkQueue.cpp \
            OgreMain/src/OgreWindowEventUtilities.cpp \
            OgreMain/src/OgreWireBoundingBox.cpp \
            OgreMain/src/OgreZip.cpp \
            OgreMain/src/GLX/OgreTimer.cpp \
            OgreMain/src/GLX/OgreConfigDialog.cpp \
            OgreMain/src/GLX/OgreErrorDialog.cpp \
            RenderSystems/GL/src/glew.cpp \
            RenderSystems/GL/src/OgreGLATIFSInit.cpp \
            RenderSystems/GL/src/OgreGLContext.cpp \
            RenderSystems/GL/src/OgreGLDefaultHardwareBufferManager.cpp \
            RenderSystems/GL/src/OgreGLDepthBuffer.cpp \
            RenderSystems/GL/src/OgreGLFBOMultiRenderTarget.cpp \
            RenderSystems/GL/src/OgreGLFBORenderTexture.cpp \
            RenderSystems/GL/src/OgreGLFrameBufferObject.cpp \
            RenderSystems/GL/src/OgreGLGpuNvparseProgram.cpp \
            RenderSystems/GL/src/OgreGLGpuProgram.cpp \
            RenderSystems/GL/src/OgreGLGpuProgramManager.cpp \
            RenderSystems/GL/src/OgreGLHardwareBufferManager.cpp \
            RenderSystems/GL/src/OgreGLHardwareIndexBuffer.cpp \
            RenderSystems/GL/src/OgreGLHardwareOcclusionQuery.cpp \
            RenderSystems/GL/src/OgreGLHardwarePixelBuffer.cpp \
            RenderSystems/GL/src/OgreGLHardwareVertexBuffer.cpp \
            RenderSystems/GL/src/OgreGLPBRenderTexture.cpp \
            RenderSystems/GL/src/OgreGLPixelFormat.cpp \
            RenderSystems/GL/src/OgreGLPlugin.cpp \
            RenderSystems/GL/src/OgreGLRenderSystem.cpp \
            RenderSystems/GL/src/OgreGLRenderTexture.cpp \
            RenderSystems/GL/src/OgreGLRenderToVertexBuffer.cpp \
            RenderSystems/GL/src/OgreGLSupport.cpp \
            RenderSystems/GL/src/OgreGLTexture.cpp \
            RenderSystems/GL/src/OgreGLTextureManager.cpp \
            RenderSystems/GL/src/nvparse/avp1.0_impl.cpp \
            RenderSystems/GL/src/nvparse/nvparse.cpp \
            RenderSystems/GL/src/nvparse/nvparse_errors.cpp \
            RenderSystems/GL/src/nvparse/_ps1.0_lexer.cpp \
            RenderSystems/GL/src/nvparse/_ps1.0_parser.cpp \
            RenderSystems/GL/src/nvparse/ps1.0_program.cpp \
            RenderSystems/GL/src/nvparse/rc1.0_combiners.cpp \
            RenderSystems/GL/src/nvparse/rc1.0_final.cpp \
            RenderSystems/GL/src/nvparse/rc1.0_general.cpp \
            RenderSystems/GL/src/nvparse/_rc1.0_lexer.cpp \
            RenderSystems/GL/src/nvparse/_rc1.0_parser.cpp \
            RenderSystems/GL/src/nvparse/ts1.0_inst.cpp \
            RenderSystems/GL/src/nvparse/ts1.0_inst_list.cpp \
            RenderSystems/GL/src/nvparse/_ts1.0_lexer.cpp \
            RenderSystems/GL/src/nvparse/_ts1.0_parser.cpp \
            RenderSystems/GL/src/nvparse/vcp1.0_impl.cpp \
            RenderSystems/GL/src/nvparse/vp1.0_impl.cpp \
            RenderSystems/GL/src/nvparse/vs1.0_inst.cpp \
            RenderSystems/GL/src/nvparse/vs1.0_inst_list.cpp \
            RenderSystems/GL/src/nvparse/_vs1.0_lexer.cpp \
            RenderSystems/GL/src/nvparse/_vs1.0_parser.cpp \
            RenderSystems/GL/src/nvparse/vsp1.0_impl.cpp \
            RenderSystems/GL/src/GLSL/src/OgreGLSLExtSupport.cpp \
            RenderSystems/GL/src/GLSL/src/OgreGLSLGpuProgram.cpp \
            RenderSystems/GL/src/GLSL/src/OgreGLSLLinkProgram.cpp \
            RenderSystems/GL/src/GLSL/src/OgreGLSLLinkProgramManager.cpp \
            RenderSystems/GL/src/GLSL/src/OgreGLSLPreprocessor.cpp \
            RenderSystems/GL/src/GLSL/src/OgreGLSLProgram.cpp \
            RenderSystems/GL/src/GLSL/src/OgreGLSLProgramFactory.cpp \
            RenderSystems/GL/src/atifs/src/ATI_FS_GLGpuProgram.cpp \
            RenderSystems/GL/src/atifs/src/Compiler2Pass.cpp \
            RenderSystems/GL/src/atifs/src/ps_1_4.cpp \
            RenderSystems/GL/src/GLX/OgreGLXContext.cpp \
            RenderSystems/GL/src/GLX/OgreGLXGLSupport.cpp \
            RenderSystems/GL/src/GLX/OgreGLXRenderTexture.cpp \
            RenderSystems/GL/src/GLX/OgreGLXWindow.cpp \
            PlugIns/CgProgramManager/src/OgreCgPlugin.cpp \
            PlugIns/CgProgramManager/src/OgreCgProgramManagerDll.cpp \
            PlugIns/CgProgramManager/src/OgreCgProgram.cpp \
            PlugIns/CgProgramManager/src/OgreCgProgramFactory.cpp \
            PlugIns/CgProgramManager/src/OgreCgFxScriptLoader.cpp \
            PlugIns/OctreeSceneManager/src/OgreOctreeCamera.cpp \
            PlugIns/OctreeSceneManager/src/OgreOctree.cpp \
            PlugIns/OctreeSceneManager/src/OgreOctreeNode.cpp \
            PlugIns/OctreeSceneManager/src/OgreOctreePlugin.cpp \
            PlugIns/OctreeSceneManager/src/OgreOctreeSceneManager.cpp \
            PlugIns/OctreeSceneManager/src/OgreOctreeSceneQuery.cpp \


################################################################################
### now the actual compile
################################################################################

grit_ogre_obj/opt/%.o: %.cpp
	@mkdir -p `dirname "$@"`
	@echo "Compiling (optimised): \"$@\""
	@$(CXX) -pedantic $(OGRE_CXXFLAGS) $(OGRE_OPT) -DOGRE_THREAD_SUPPORT=2 -DOGRE_THREAD_PROVIDER=1 -c "$<" -o "$@"

grit_ogre_obj/dbg/%.o: %.cpp
	@mkdir -p `dirname "$@"`
	@echo "Compiling (debug): \"$@\""
	@$(CXX) -pedantic $(OGRE_CXXFLAGS) $(OGRE_DBG) -DOGRE_THREAD_SUPPORT=2 -DOGRE_THREAD_PROVIDER=1 -c "$<" -o "$@"


# create the files in $(OGRE_SOURCE) where *.cpp is replaced with grit_ogre_obj/opt/*.o
grit_ogre_obj/opt/libogre.a: $(patsubst %.cpp,grit_ogre_obj/opt/%.o,$(OGRE_SOURCE))
	@rm -f $@
	@ar rs $@ $^

grit_ogre_obj/dbg/libogre.a: $(patsubst %.cpp,grit_ogre_obj/dbg/%.o,$(OGRE_SOURCE))
	@rm -f $@
	@ar rs $@ $^




XMLCONVERTER_SOURCE=Tools/XMLConverter/src/main.cpp \
                    Tools/XMLConverter/src/OgreXMLSkeletonSerializer.cpp \
                    Tools/XMLConverter/src/OgreXMLMeshSerializer.cpp \
                    Tools/XMLConverter/src/tinyxml.cpp \
                    Tools/XMLConverter/src/tinyxmlparser.cpp \
                    Tools/XMLConverter/src/tinyxmlerror.cpp \
                    Tools/XMLConverter/src/tinystr.cpp

grit_ogre_obj/dbg/OgreXMLConverter.$(GRIT_EXEC_SUFFIX): $(XMLCONVERTER_SOURCE) grit_ogre_obj/dbg/libogre.a
	$(CXX) -pedantic  -DTIXML_USE_STL -I Tools/XMLConverter/include $(OGRE_CXXFLAGS) $(OGRE_DBG) $^ -o "$@" $(OGRE_LDFLAGS) $(OGRE_DEPLDLIBS)

grit_ogre_obj/opt/OgreXMLConverter.$(GRIT_EXEC_SUFFIX): $(XMLCONVERTER_SOURCE) grit_ogre_obj/opt/libogre.a
	$(CXX) -pedantic  -DTIXML_USE_STL -I Tools/XMLConverter/include $(OGRE_CXXFLAGS) $(OGRE_OPT) $^ -o "$@" $(OGRE_LDFLAGS) $(OGRE_DEPLDLIBS)

GRIT_BLENDER_DIR=../../exporters/blender_scripts/addons/grit_blender
$(GRIT_BLENDER_DIR)/OgreXMLConverter.$(GRIT_EXEC_SUFFIX): grit_ogre_obj/opt/OgreXMLConverter.$(GRIT_EXEC_SUFFIX)
	strip $< -o $@


.PHONY: all clean depend

clean:
	find grit_ogre_obj -name *.o -o -name *.a | xargs rm -v

all: grit_ogre_obj/dbg/libogre.a grit_ogre_obj/opt/libogre.a grit_ogre_obj/opt/OgreXMLConverter.$(GRIT_EXEC_SUFFIX) grit_ogre_obj/dbg/OgreXMLConverter.$(GRIT_EXEC_SUFFIX) $(GRIT_BLENDER_DIR)/OgreXMLConverter.$(GRIT_EXEC_SUFFIX)

.DEFAULT_GOAL := all

TEMPFILE:=$(shell tempfile)

depend:
	makedepend -Y $(subst -isystem,-I,$(OGRE_CXXFLAGS)) -f $(TEMPFILE) $(XMLCONVERTER_SOURCE) $(OGRE_SOURCE)
	cat $(TEMPFILE) | sed 's/^\([^:]*\): /grit_ogre_obj\/opt\/&/g' >> Makefile.depend
	cat $(TEMPFILE) | sed 's/^\([^:]*\): /grit_ogre_obj\/dbg\/&/g' >> Makefile.depend
	rm $(TEMPFILE)
	sed -i 's/\([^/]*\)\/Tools\/XMLConverter\/src\/main[.]o/OgreXMLConverter/g' Makefile.depend

-include $(THISFILE).depend

# vim: sw=8:ts=8:noet
