//Maya ASCII 2018 scene
//Name: drawing tablet.ma
//Last modified: Fri, May 04, 2018 07:53:51 PM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "9D2104DB-4C59-3F80-DB6E-97A5565AFD1B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.463183747558105 12.273759876975365 -7.6854816203363967 ;
	setAttr ".r" -type "double3" 688.46164727019391 -832.59999999940817 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F2FF61CB-4943-D879-FF4E-03BC14BD9E9A";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 23.464887882743739;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "1410BC15-4A20-2FA3-111A-CD84FD2575BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0AB75631-4F89-6123-386C-F2B1CB417225";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 35.120423961904713;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C7581E32-477B-390A-AEBB-96A54DF5DB01";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E24AC500-4905-A104-29B8-528F23DE014C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "A4401660-456B-101B-11F3-519A72854BC6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "40FC12A0-444B-9E7F-2947-CEB42123CDB9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "F327D15D-4051-3745-EF29-539C101E7358";
	setAttr ".t" -type "double3" 0 0.16543650527197376 0 ;
	setAttr ".s" -type "double3" 9.2058067361886966 0.31226752628085702 14.09268266676645 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "6835DA39-4B3C-CCFF-C655-7781ACAF3288";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".pt";
	setAttr ".pt[72]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[73]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[87]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[88]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".pt[165]" -type "float3" -1.8626451e-09 1.8626451e-09 1.8626451e-09 ;
	setAttr ".pt[166]" -type "float3" -2.7939677e-09 -1.8626454e-09 9.3132257e-10 ;
	setAttr ".pt[167]" -type "float3" -2.7939677e-09 -1.8626454e-09 -9.3132257e-10 ;
	setAttr ".pt[168]" -type "float3" -1.8626451e-09 1.8626451e-09 -1.8626451e-09 ;
	setAttr ".pt[169]" -type "float3" 5.5879354e-09 -1.8626454e-09 2.7939677e-09 ;
	setAttr ".pt[170]" -type "float3" 0 -1.8626454e-09 2.7939677e-09 ;
	setAttr ".pt[171]" -type "float3" -9.3132257e-10 -1.8626454e-09 -2.7939677e-09 ;
	setAttr ".pt[172]" -type "float3" 5.5879354e-09 -1.8626454e-09 -2.7939677e-09 ;
	setAttr ".pt[173]" -type "float3" -1.3969839e-09 -1.8626454e-09 -2.7939677e-09 ;
	setAttr ".pt[174]" -type "float3" 6.9849193e-10 -1.8626454e-09 2.7939677e-09 ;
	setAttr ".pt[175]" -type "float3" 4.6566129e-10 -1.8626454e-09 -2.7939677e-09 ;
	setAttr ".pt[176]" -type "float3" -2.3283064e-10 -1.8626454e-09 2.7939677e-09 ;
	setAttr ".pt[177]" -type "float3" 5.8207661e-10 -1.8626454e-09 -2.7939677e-09 ;
	setAttr ".pt[178]" -type "float3" 0 -1.8626454e-09 2.7939677e-09 ;
	setAttr ".pt[179]" -type "float3" 2.0954758e-09 -1.8626454e-09 -2.7939677e-09 ;
	setAttr ".pt[180]" -type "float3" -2.3283064e-10 -1.8626454e-09 2.7939677e-09 ;
	setAttr ".pt[181]" -type "float3" 1.3969839e-09 -1.8626454e-09 2.7939677e-09 ;
	setAttr ".pt[182]" -type "float3" -1.3969839e-09 -1.8626454e-09 -2.7939677e-09 ;
	setAttr ".pt[183]" -type "float3" -9.3132257e-10 -1.8626454e-09 -2.7939677e-09 ;
	setAttr ".pt[184]" -type "float3" -9.3132257e-10 -1.8626454e-09 2.7939677e-09 ;
	setAttr ".pt[185]" -type "float3" 2.7939677e-09 -1.8626454e-09 2.7939677e-09 ;
	setAttr ".pt[186]" -type "float3" -9.3132257e-10 -1.8626454e-09 -2.7939677e-09 ;
	setAttr ".pt[187]" -type "float3" -5.5879354e-09 -1.8626454e-09 2.7939677e-09 ;
	setAttr ".pt[188]" -type "float3" 2.7939677e-09 -1.8626454e-09 -9.3132257e-10 ;
	setAttr ".pt[189]" -type "float3" 2.7939677e-09 -1.8626454e-09 9.3132257e-10 ;
	setAttr ".pt[190]" -type "float3" 1.8626451e-09 -5.9604645e-08 4.6566129e-09 ;
	setAttr ".pt[191]" -type "float3" -4.6566129e-10 -5.9604645e-08 3.7252903e-09 ;
	setAttr ".pt[192]" -type "float3" 2.7939677e-09 -5.9604645e-08 -3.7252903e-09 ;
	setAttr ".pt[193]" -type "float3" -3.7252903e-09 -5.9604645e-08 -1.8626451e-09 ;
	setAttr ".pt[194]" -type "float3" -3.7252903e-09 -5.9604645e-08 1.8626451e-09 ;
	setAttr ".pt[195]" -type "float3" 1.8626451e-09 -5.9604645e-08 -3.7252903e-09 ;
	setAttr ".pt[196]" -type "float3" 0 -5.9604645e-08 -3.7252903e-09 ;
	setAttr ".pt[197]" -type "float3" -1.8626451e-09 -5.9604645e-08 3.7252903e-09 ;
	setAttr ".pt[198]" -type "float3" 4.6566129e-10 -5.9604645e-08 -3.7252903e-09 ;
	setAttr ".pt[199]" -type "float3" -6.9849193e-10 -5.9604645e-08 3.7252903e-09 ;
	setAttr ".pt[200]" -type "float3" 0 -5.9604645e-08 -3.7252903e-09 ;
	setAttr ".pt[201]" -type "float3" -4.6566129e-10 -5.9604645e-08 3.7252903e-09 ;
	setAttr ".pt[202]" -type "float3" -1.8626451e-09 -5.9604645e-08 -3.7252903e-09 ;
	setAttr ".pt[203]" -type "float3" 0 -5.9604645e-08 3.7252903e-09 ;
	setAttr ".pt[204]" -type "float3" -4.6566129e-10 -5.9604645e-08 3.7252903e-09 ;
	setAttr ".pt[205]" -type "float3" 1.8626451e-09 -5.9604645e-08 -3.7252903e-09 ;
	setAttr ".pt[206]" -type "float3" 9.3132257e-10 -5.9604645e-08 -3.7252903e-09 ;
	setAttr ".pt[207]" -type "float3" -9.3132257e-10 -5.9604645e-08 3.7252903e-09 ;
	setAttr ".pt[208]" -type "float3" -2.7939677e-09 -5.9604645e-08 3.7252903e-09 ;
	setAttr ".pt[209]" -type "float3" -9.3132257e-10 -5.9604645e-08 -3.7252903e-09 ;
	setAttr ".pt[210]" -type "float3" -1.8626451e-09 -5.9604645e-08 3.7252903e-09 ;
	setAttr ".pt[211]" -type "float3" 3.7252903e-09 -5.9604645e-08 -1.8626451e-09 ;
	setAttr ".pt[212]" -type "float3" 3.7252903e-09 -5.9604645e-08 1.8626451e-09 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder1";
	rename -uid "46E79ACC-4BEB-C80D-E115-F2B93FB12E5C";
	setAttr ".t" -type "double3" 0.33844865876961139 0.36559968972786644 -6.1990060396181805 ;
	setAttr ".s" -type "double3" 0.44674454703906213 0.015437304234813359 0.44674454703906213 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "1C9208C4-4F03-E1CD-0A7F-E689B8E5F916";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.83749997615814209 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[83]" -type "float3"  0 2.1035771 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "153AA15A-4F9A-513B-B82B-6B8F0F61F5BB";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "40CF2DCC-4F0B-A3E8-8712-3C908331C0F1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "492DF573-41BE-4677-46BD-1D912F6E6CA4";
createNode displayLayerManager -n "layerManager";
	rename -uid "31A3BBFD-4C9D-870E-012B-06813E08D1CB";
createNode displayLayer -n "defaultLayer";
	rename -uid "63010523-4906-2B9F-EAD7-E3B699956449";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "122299A3-4626-4509-CFA2-968A20B34104";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CE785923-4937-25E6-E252-F8B9C831B93F";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "D23E1DA5-420E-DE5E-7FBF-C3A9D3ED8902";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "4131927D-4788-638A-4231-14940D0AEB07";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 9.2058067361886966 0 0 0 0 0.43846247831279261 0 0 0 0 14.09268266676645 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.05;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "490304A8-4A82-F95F-0105-51BA9457F588";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2225\n            -height 1076\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2225\\n    -height 1076\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2225\\n    -height 1076\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "83E690B5-408E-1347-09F2-A7A5371DEA25";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "48480B8A-4B6D-F3E2-FB4D-809F931F5E58";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 9.2058067361886966 0 0 0 0 0.31226752628085702 0 0 0 0 14.09268266676645 0
		 0 0.16543650527197376 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.32157028 0 ;
	setAttr ".rs" 60387;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.6029033680943483 0.32157026841240227 -7.046341333383225 ;
	setAttr ".cbx" -type "double3" 4.6029033680943483 0.32157026841240227 7.046341333383225 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "907A3FF5-4BC1-4D90-0B5D-84B44750463C";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 9.2058067361886966 0 0 0 0 0.31226752628085702 0 0 0 0 14.09268266676645 0
		 0 0.16543650527197376 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.32157028 0.64555913 ;
	setAttr ".rs" 53784;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.8501941832638158 0.32157028702499724 -5.2484995399700489 ;
	setAttr ".cbx" -type "double3" 3.8501941832638158 0.32157028702499724 6.5396177614433473 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "E099DCC8-4FC2-FE0E-327C-218EF3BD1B31";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[16:23]" -type "float3"  0.077676803 0 -0.035956487
		 0.081764609 0 -0.033286206 -0.077676803 0 -0.035956487 -0.081764609 0 -0.033286206
		 -0.081764609 0 0.12490244 -0.077676803 0 0.12757273 0.077676803 0 0.12757273 0.081764609
		 0 0.12490244;
createNode polyTweak -n "polyTweak2";
	rename -uid "D851C73D-4291-4D02-FE1E-AC8182DF9C62";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[24]" -type "float3" 0.0065990346 0.16293426 -0.006946316 ;
	setAttr ".tk[25]" -type "float3" 0.006946316 0.16293426 -0.0067194598 ;
	setAttr ".tk[26]" -type "float3" -0.0065990346 0.16293426 -0.006946316 ;
	setAttr ".tk[27]" -type "float3" -0.006946316 0.16293426 -0.0067194598 ;
	setAttr ".tk[28]" -type "float3" -0.006946316 0.16293426 0.0067194598 ;
	setAttr ".tk[29]" -type "float3" -0.0065990346 0.16293426 0.006946316 ;
	setAttr ".tk[30]" -type "float3" 0.0065990346 0.16293426 0.006946316 ;
	setAttr ".tk[31]" -type "float3" 0.006946316 0.16293426 0.0067194598 ;
createNode polySplit -n "polySplit1";
	rename -uid "7DC5DBA1-465D-10B5-F4DC-D8AD3AA9FD8D";
	setAttr -s 4 ".e[0:3]"  0.45929399 0.45929399 0.45929399 0.45929399;
	setAttr -s 4 ".d[0:3]"  -2147483637 -2147483640 -2147483612 -2147483596;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "456B7116-4D8D-FD5B-4E05-4CA45E6E62F1";
	setAttr -s 4 ".e[0:3]"  0.89376801 0.89376801 0.89376801 0.89376801;
	setAttr -s 4 ".d[0:3]"  -2147483637 -2147483640 -2147483612 -2147483596;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "134EFC21-42CA-EC39-E27E-BDAF9934F9C9";
	setAttr -s 4 ".e[0:3]"  0.79683 0.79683 0.79683 0.79683;
	setAttr -s 4 ".d[0:3]"  -2147483637 -2147483640 -2147483612 -2147483596;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "42BA16F4-4FDA-8F38-808A-E9AA8F0530CF";
	setAttr -s 4 ".e[0:3]"  0.84590399 0.84590399 0.84590399 0.84590399;
	setAttr -s 4 ".d[0:3]"  -2147483637 -2147483640 -2147483612 -2147483596;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "8D702025-4DE1-0F69-DD71-DBAB272228FE";
	setAttr -s 4 ".e[0:3]"  0.33391899 0.33391899 0.33391899 0.33391899;
	setAttr -s 4 ".d[0:3]"  -2147483592 -2147483591 -2147483590 -2147483589;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "165E6895-4627-3707-FF5B-57AFDF0B3128";
	setAttr -s 4 ".e[0:3]"  0.206227 0.206227 0.206227 0.206227;
	setAttr -s 4 ".d[0:3]"  -2147483564 -2147483563 -2147483562 -2147483561;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "DF973FCE-4F9C-7322-D1DF-AB9DFD576BA9";
	setAttr -s 4 ".e[0:3]"  0.40681899 0.40681899 0.40681899 0.40681899;
	setAttr -s 4 ".d[0:3]"  -2147483557 -2147483556 -2147483555 -2147483554;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "604D6DDC-431A-D2A5-78A8-7DA3E1340D51";
	setAttr -s 4 ".e[0:3]"  0.46891299 0.46891299 0.46891299 0.46891299;
	setAttr -s 4 ".d[0:3]"  -2147483557 -2147483556 -2147483555 -2147483554;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "C10C9953-407F-A20C-DEEB-1DB17B3CA58A";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[33]" -type "float3" 0.0031618809 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.0031618734 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.0069518131 0 0 ;
	setAttr ".tk[38]" -type "float3" -0.006951828 0 0 ;
	setAttr ".tk[41]" -type "float3" 0.013430187 0 0 ;
	setAttr ".tk[42]" -type "float3" -0.013430083 0 0 ;
	setAttr ".tk[45]" -type "float3" 0.017345345 0 0 ;
	setAttr ".tk[46]" -type "float3" -0.017345449 0 0 ;
	setAttr ".tk[49]" -type "float3" -0.010862678 0 0 ;
	setAttr ".tk[50]" -type "float3" 0.010862701 0 0 ;
	setAttr ".tk[53]" -type "float3" -0.016631953 0 0 ;
	setAttr ".tk[54]" -type "float3" 0.016631959 0 0 ;
	setAttr ".tk[57]" -type "float3" -0.025665788 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.02566582 0 0 ;
	setAttr ".tk[61]" -type "float3" -0.020868072 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.02086802 0 0 ;
	setAttr ".tk[64]" -type "float3" -1.6763806e-08 0 -1.8626451e-09 ;
	setAttr ".tk[65]" -type "float3" 1.3038516e-08 0 0 ;
	setAttr ".tk[66]" -type "float3" 1.4901161e-08 0 -1.8626451e-09 ;
	setAttr ".tk[67]" -type "float3" -1.4901161e-08 0 0 ;
createNode polySplit -n "polySplit9";
	rename -uid "0CD421CB-4249-7EFD-0FFF-99A19B4E2486";
	setAttr -s 17 ".e[0:16]"  0.28598601 0.28598601 0.28598601 0.28598601
		 0.28598601 0.28598601 0.28598601 0.28598601 0.28598601 0.28598601 0.28598601 0.28598601
		 0.28598601 0.28598601 0.28598601 0.28598601 0.28598601;
	setAttr -s 17 ".d[0:16]"  -2147483624 -2147483621 -2147483619 -2147483617 -2147483615 -2147483545 
		-2147483538 -2147483552 -2147483559 -2147483587 -2147483580 -2147483573 -2147483566 -2147483613 -2147483611 -2147483623 -2147483624;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "9459F906-42E8-0358-A1A1-25A02696AED4";
	setAttr -s 17 ".e[0:16]"  0.51916802 0.51916802 0.51916802 0.51916802
		 0.51916802 0.51916802 0.51916802 0.51916802 0.51916802 0.51916802 0.51916802 0.51916802
		 0.51916802 0.51916802 0.51916802 0.51916802 0.51916802;
	setAttr -s 17 ".d[0:16]"  -2147483536 -2147483521 -2147483522 -2147483523 -2147483524 -2147483525 
		-2147483526 -2147483527 -2147483528 -2147483529 -2147483530 -2147483531 -2147483532 -2147483533 -2147483534 -2147483535 -2147483536;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "7397D85B-4452-438D-764E-689EB167BB70";
	setAttr ".ics" -type "componentList" 1 "f[45]";
	setAttr ".ix" -type "matrix" 9.2058067361886966 0 0 0 0 0.31226752628085702 0 0 0 0 14.09268266676645 0
		 0 0.16543650527197376 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4054351 0.32157028 -6.1989603 ;
	setAttr ".rs" 50882;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1574274106871183 0.32157028702499724 -6.5321838557464265 ;
	setAttr ".cbx" -type "double3" 2.6534426437090346 0.32157028702499724 -5.8657363099907718 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "21B00F7E-45E5-04EC-F2C7-CBAFA755F474";
	setAttr ".ics" -type "componentList" 1 "f[45]";
	setAttr ".ix" -type "matrix" 9.2058067361886966 0 0 0 0 0.31226752628085702 0 0 0 0 14.09268266676645 0
		 0 0.16543650527197376 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4054348 0.32157028 -6.1989603 ;
	setAttr ".rs" 59649;
	setAttr ".lt" -type "double3" 0 2.7153736489842106e-15 0.064992455508522284 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1574272735099083 0.32157028702499724 -6.5321838557464265 ;
	setAttr ".cbx" -type "double3" 2.6534426437090346 0.32157028702499724 -5.8657363099907718 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "06F8165C-4F6F-065C-81BA-C3B3F1C849B8";
	setAttr ".ics" -type "componentList" 1 "f[42]";
	setAttr ".ix" -type "matrix" 9.2058067361886966 0 0 0 0 0.31226752628085702 0 0 0 0 14.09268266676645 0
		 0 0.16543650527197376 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4212574 0.32157028 -6.1989603 ;
	setAttr ".rs" 48548;
	setAttr ".lt" -type "double3" 0 -9.3951727692837012e-16 0.078185605607753506 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1230308607230155 0.32157028702499724 -6.5321838557464265 ;
	setAttr ".cbx" -type "double3" 1.7194838175464993 0.32157028702499724 -5.8657363099907718 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "493243CD-4941-4255-A409-DEAD33AD22DB";
	setAttr ".ics" -type "componentList" 1 "f[27]";
	setAttr ".ix" -type "matrix" 9.2058067361886966 0 0 0 0 0.31226752628085702 0 0 0 0 14.09268266676645 0
		 0 0.16543650527197376 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.69124413 0.32157028 -6.1989603 ;
	setAttr ".rs" 63590;
	setAttr ".lt" -type "double3" 1.1102230246251565e-16 1.3725833865878312e-15 0.063173010268451291 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.906547801686861 0.32157028702499724 -6.5321838557464265 ;
	setAttr ".cbx" -type "double3" -0.47594048003644424 0.32157028702499724 -5.8657363099907718 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "0F2EC0CC-422F-D63A-9F39-9D9A9CFFD9CA";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[32]" -type "float3" -0.016191043 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.016191043 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.016191043 0 0 ;
	setAttr ".tk[35]" -type "float3" -0.016191043 0 0 ;
	setAttr ".tk[36]" -type "float3" -0.02040422 0 0 ;
	setAttr ".tk[37]" -type "float3" -0.02040422 0 0 ;
	setAttr ".tk[38]" -type "float3" -0.02040422 0 0 ;
	setAttr ".tk[39]" -type "float3" -0.02040422 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.0070931371 0 0 ;
	setAttr ".tk[41]" -type "float3" 0.0070931371 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.0070931371 0 0 ;
	setAttr ".tk[43]" -type "float3" 0.0070931371 0 0 ;
	setAttr ".tk[73]" -type "float3" -0.016191043 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.02040422 0 0 ;
	setAttr ".tk[75]" -type "float3" 0.0070931371 0 0 ;
	setAttr ".tk[85]" -type "float3" 0.0070931371 0 0 ;
	setAttr ".tk[86]" -type "float3" -0.02040422 0 0 ;
	setAttr ".tk[87]" -type "float3" -0.016191043 0 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.088860095 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.088860095 0 ;
	setAttr ".tk[106]" -type "float3" 0 -0.088860095 0 ;
	setAttr ".tk[107]" -type "float3" 0 -0.088860095 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "120E2615-4AC0-D374-6970-8EADF5C24589";
	setAttr ".ics" -type "componentList" 1 "f[33]";
	setAttr ".ix" -type "matrix" 9.2058067361886966 0 0 0 0 0.31226752628085702 0 0 0 0 14.09268266676645 0
		 0 0.16543650527197376 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5582057 0.32157028 -6.1989603 ;
	setAttr ".rs" 60249;
	setAttr ".lt" -type "double3" -6.6613381477509392e-16 -1.8391424869772267e-16 0.064169610847436442 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7932435918831422 0.32157028702499724 -6.5321838557464265 ;
	setAttr ".cbx" -type "double3" -1.3231677462269971 0.32157028702499724 -5.8657363099907718 ;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "15AADD25-4782-1ED4-6F34-7695B5FE67AB";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "C0C12566-435A-7B19-C2A2-19A422E0E0C4";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.44674454703906213 0 0 0 0 0.015437304234813359 0 0
		 0 0 0.44674454703906213 0 0.33844865876961139 0.36559968972786644 -6.1990060396181805 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.33844861 0.381037 -6.1990061 ;
	setAttr ".rs" 43236;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.10829599478165086 0.38103699396267982 -6.6457507996816432 ;
	setAttr ".cbx" -type "double3" 0.78519320580867347 0.38103699396267982 -5.7522614393230187 ;
createNode polyTweak -n "polyTweak5";
	rename -uid "4B880FBC-494E-88F5-5FEE-1FAA852EE3A1";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[20]" -type "float3" 0 0 -0.0015564414 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.0015564414 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.0015564414 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "7BB3912E-4D31-CD1C-5860-2AA3C7346A05";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.44674454703906213 0 0 0 0 0.015437304234813359 0 0
		 0 0 0.44674454703906213 0 0.33844865876961139 0.36559968972786644 -6.1990060396181805 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.33844861 0.35141572 -6.1990061 ;
	setAttr ".rs" 55999;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.10693491220901682 0.35141573822990813 -6.4305199992031756 ;
	setAttr ".cbx" -type "double3" 0.56996229881800586 0.35141573822990813 -5.9674925060819861 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "913353FD-413E-78A5-8B08-D1A3E6C6E58D";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[41:61]" -type "float3"  -0.4581967 -1.91881204 0.14962672
		 -0.38976556 -1.91881204 0.28318083 -5.7432192e-08 -1.91881204 -0.00075006468 -0.2831811
		 -1.91881204 0.38976511 -0.14887711 -1.91881204 0.45819658 -5.7432192e-08 -1.91881204
		 0.48177651 0.14887704 -1.91881204 0.45819658 0.28318083 -1.91881204 0.38976511 0.38976529
		 -1.91881204 0.28318083 0.45819658 -1.91881204 0.14887632 0.48177621 -1.91881204 -2.2972877e-07
		 0.45819658 -1.91881204 -0.14887728 0.38976529 -1.91881204 -0.28318152 0.28318083
		 -1.91881204 -0.3897655 0.14887701 -1.91881204 -0.45819688 -5.7432192e-08 -1.91881204
		 -0.48177651 -0.14887704 -1.91881204 -0.45819688 -0.28318095 -1.91881204 -0.3897655
		 -0.38976529 -1.91881204 -0.28318152 -0.45819658 -1.91881204 -0.14887728 -0.48177621
		 -1.91881204 -0.00075006468;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "52188FF5-429B-9599-64FC-FA8CA40674EC";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.44674454703906213 0 0 0 0 0.015437304234813359 0 0
		 0 0 0.44674454703906213 0 0.33844865876961139 0.36559968972786644 -6.1990060396181805 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.33844861 0.35141578 -6.1990061 ;
	setAttr ".rs" 64642;
	setAttr ".lt" -type "double3" -5.5511151231257827e-17 -8.7895957587722769e-16 0.041517981605588228 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.1400939042456498 0.35141577135476942 -6.3973611003647175 ;
	setAttr ".cbx" -type "double3" 0.53680333340942288 0.35141577135476942 -6.0006514049204442 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "49483264-42CF-916C-B239-C7BEFF9D8E9B";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[61:81]" -type "float3"  -0.070590906 0 0.02305185
		 -0.060048193 0 0.043627627 -4.268494e-09 0 -0.00011548838 -0.043627586 0 0.060048155
		 -0.022936374 0 0.070590854 -4.268494e-09 0 0.074223645 0.022936359 0 0.070590854
		 0.043627564 0 0.060048155 0.060048141 0 0.043627627 0.070590824 0 0.022936294 0.074223608
		 0 -6.8295911e-08 0.070590824 0 -0.022936432 0.060048137 0 -0.043627627 0.043627553
		 0 -0.060048155 0.022936348 0 -0.070590995 -4.268494e-09 0 -0.074223645 -0.022936374
		 0 -0.070590995 -0.043627564 0 -0.060048155 -0.060048141 0 -0.043627627 -0.070590846
		 0 -0.022936432 -0.074223608 0 -0.00011548838;
createNode polySplit -n "polySplit11";
	rename -uid "92088623-463F-9BA8-DCDC-889DC6B0C133";
	setAttr -s 6 ".e[0:5]"  0 0.83181202 0.82693499 0.193609 0.78692597
		 0.77352202;
	setAttr -s 6 ".d[0:5]"  -2147483547 -2147483604 -2147483620 -2147483473 -2147483520 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "E18AC10E-4F4F-940A-51F4-2A833F37B8DE";
	setAttr -s 6 ".e[0:5]"  0 0.91773099 0.91837901 0.078549899 0.92450798
		 0.92670202;
	setAttr -s 6 ".d[0:5]"  -2147483540 -2147483604 -2147483620 -2147483430 -2147483520 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "95217F4E-4405-5C22-8E71-F9880964EEC8";
	setAttr -s 6 ".e[0:5]"  0 0.92961401 0.93033302 0.066710398 0.93621403
		 0.93830103;
	setAttr -s 6 ".d[0:5]"  -2147483554 -2147483604 -2147483620 -2147483420 -2147483520 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "0F40996E-4FD6-46EC-3FF9-E895DB81EB1A";
	setAttr -s 6 ".e[0:5]"  0 0.90563601 0.906739 0.0888943 0.91539699
		 0.91844499;
	setAttr -s 6 ".d[0:5]"  -2147483561 -2147483604 -2147483620 -2147483410 -2147483520 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "5B52B9BC-49D3-EDF4-EE9B-1598EF1C4A5B";
	setAttr -s 6 ".e[0:5]"  0 0.68178099 0.68558401 0.29881799 0.71636701
		 0.727063;
	setAttr -s 6 ".d[0:5]"  -2147483589 -2147483604 -2147483620 -2147483400 -2147483520 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "1A4EA224-4C03-2BB3-5131-00818E13134A";
	setAttr -s 6 ".e[0:5]"  0 0.87471902 0.87690502 0.114381 0.89373797
		 0.89925301;
	setAttr -s 6 ".d[0:5]"  -2147483582 -2147483604 -2147483620 -2147483390 -2147483520 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "65FC136D-41CC-EA8D-D5E7-5EB47D3BD699";
	setAttr -s 6 ".e[0:5]"  0 0.851147 0.85395098 0.13466001 0.87575197
		 0.882716;
	setAttr -s 6 ".d[0:5]"  -2147483575 -2147483604 -2147483620 -2147483380 -2147483520 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "785B7C70-4ED4-8745-A759-B1A739D116DE";
	setAttr -s 6 ".e[0:5]"  0 0.81050599 0.81485099 0.16816901 0.84696603
		 0.856893;
	setAttr -s 6 ".d[0:5]"  -2147483568 -2147483604 -2147483620 -2147483370 -2147483520 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "1DCE3F9A-405F-0CCD-6C27-70AE3EF1DB66";
	setAttr -s 2 ".e[0:1]"  1 0.30756101;
	setAttr -s 2 ".d[0:1]"  -2147483637 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "2573C752-4DA1-5FC1-7664-38B261C5FA7F";
	setAttr -s 2 ".e[0:1]"  0 0.073272496;
	setAttr -s 2 ".d[0:1]"  -2147483578 -2147483352;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "C9757F0E-48E1-E51F-AD82-C098286236AD";
	setAttr -s 2 ".e[0:1]"  0 0.0685177;
	setAttr -s 2 ".d[0:1]"  -2147483585 -2147483350;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "CBF9D1EB-4010-6953-CA82-E381DCD22E56";
	setAttr -s 2 ".e[0:1]"  0 0.0749318;
	setAttr -s 2 ".d[0:1]"  -2147483592 -2147483348;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "E3A48CC1-4DBE-61B9-DDD7-BFAC5F33A013";
	setAttr -s 2 ".e[0:1]"  1 0.30882999;
	setAttr -s 2 ".d[0:1]"  -2147483592 -2147483346;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit24";
	rename -uid "3131C173-485F-FEC9-72D5-788B8B2A4F60";
	setAttr -s 2 ".e[0:1]"  0.150438 1;
	setAttr -s 2 ".d[0:1]"  -2147483344 -2147483564;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "0B028E7D-445D-58F2-1217-92B74B1C21B2";
	setAttr -s 2 ".e[0:1]"  1 0.122099;
	setAttr -s 2 ".d[0:1]"  -2147483557 -2147483342;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "9E54B70C-4106-DAD2-33D7-4D9AEE62DED1";
	setAttr -s 2 ".e[0:1]"  0.205396 0;
	setAttr -s 2 ".d[0:1]"  -2147483340 -2147483550;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "BE87101B-428F-7D7F-2AC9-468832DDCA2A";
	setAttr -s 2 ".e[0:1]"  0.98603201 1;
	setAttr -s 2 ".d[0:1]"  -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit28";
	rename -uid "7DC9EC1D-436B-48F4-4D61-4D9805E9438E";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483352 -2147483368;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit29";
	rename -uid "CA9EF984-453F-7364-7726-A0BF0B9EB0C1";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483378 -2147483350;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit30";
	rename -uid "EA45EBBA-4644-1B7B-60F8-96A7A653B269";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483348 -2147483388;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit31";
	rename -uid "24A20588-4B18-D9DF-A13A-93A92B0672B8";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483398 -2147483346;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit32";
	rename -uid "BA1A09B7-456E-5A37-47F0-3E917498E9A4";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483344 -2147483408;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit33";
	rename -uid "0DA5D8AC-4E5E-7D9B-C4B6-D4BEF058B662";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483418 -2147483342;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit34";
	rename -uid "BFBC4E30-4E4F-1FC6-15D1-7BB7E370E57E";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483340 -2147483428;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTriangulate -n "polyTriangulate1";
	rename -uid "B4FB5CC5-4F57-584F-DEEF-5C893110B934";
	setAttr ".ics" -type "componentList" 5 "f[0]" "f[4:5]" "f[137]" "f[141]" "f[148]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTriangulate1.out" "pCubeShape1.i";
connectAttr "polyExtrudeFace10.out" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyBevel1.ip";
connectAttr "pCubeShape1.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyTweak4.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak5.out" "polyExtrudeFace8.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyCylinder1.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace9.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace10.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak7.ip";
connectAttr "polyExtrudeFace7.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "polySplit32.out" "polySplit33.ip";
connectAttr "polySplit33.out" "polySplit34.ip";
connectAttr "polySplit34.out" "polyTriangulate1.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of drawing tablet.ma
