//Maya ASCII 2015 scene
//Name: la_theatre_model.ma
//Last modified: Sat, Jan 14, 2017 06:52:01 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201402282131-909040";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.870506739062382 0.55042888910179144 117.57269229529066 ;
	setAttr ".r" -type "double3" 353.09473361740368 2164.2000000000689 -9.965997292283787e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 125.2889874042083;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.10000000000001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.8277137155028726 -2.6495705432030849 100.10000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 86.310748043885383;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.10000000000001 -20.903205372246664 5.5783261698015441 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 151.3425886075558;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane1";
	setAttr ".s" -type "double3" 10 10 10 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	setAttr -k off ".v";
	setAttr ".fc" 204;
	setAttr ".imn" -type "string" "C:/Users/tekt/creations/broadway/touch/theatre-front-raw.png";
	setAttr ".cov" -type "short2" 1080 1280 ;
	setAttr ".ag" 0.47328244237840633;
	setAttr ".dlc" no;
	setAttr ".w" 10.8;
	setAttr ".h" 12.8;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" -43.0347439867015 -22.877254556882797 0 ;
	setAttr ".s" -type "double3" 4.7298294045596361 31.762117366919945 4.7298294045596361 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.31699995696544647 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" -43.072162356145327 -62.749280387535229 0 ;
	setAttr ".s" -type "double3" 13.604837263803516 10.670506106989315 10.670506106989315 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" -43.072162356145327 16.426174759016938 0 ;
	setAttr ".s" -type "double3" 10.006525385846473 10.670506106989315 10.670506106989315 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" 0 -6.1930004677671837 -0.76375704337852168 ;
	setAttr ".s" -type "double3" 14.533693406222421 14.595847865065998 8.0705508752859387 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000000931322575 0.74806296825408936 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 462 ".pt";
	setAttr ".pt[62:227]" -type "float3"  0 0 1.3877788e-017 0 0 1.3877788e-017 
		0 0 1.3877788e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 1.3877788e-017 0 0 0 0 0 1.3877788e-017 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr ".pt[322:393]" 0 0 1.3877788e-017 0 0 0 0 0 1.3877788e-017 0 0 0 0 
		0 1.3877788e-017 0 0 0 0 0 1.3877788e-017 0 0 0 0 0 1.3877788e-017 0 0 0 0 0 1.3877788e-017 
		0 0 0 0 0 1.3877788e-017 0 0 0 0 0 1.3877788e-017 0 0 0 0 0 1.3877788e-017 0 0 0 
		0 0 1.3877788e-017 0 0 0 0 0 1.3877788e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".pt[405:461]" 0.019450903 0 -7.4505806e-009 0.019450903 -2.7939677e-009 
		-6.712753e-009 0.016942501 0 -5.8471414e-009 0 0 0 0 0 1.3877788e-017 0 0 1.3877788e-017 
		0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 
		0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 0 
		-0.016942501 0 0 -0.019450903 0 0 -0.019450903 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.3877788e-017 
		0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 
		0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.3877788e-017 0 0 1.3877788e-017 
		0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 
		0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 1.3877788e-017 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sa" 30;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 100 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 1 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	setAttr -s 31 ".e[0:30]"  0.0239398 0.0239398 0.0239398 0.0239398 0.0239398
		 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398
		 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398
		 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398 0.0239398;
	setAttr -s 31 ".d[0:30]"  -2147483582 -2147483581 -2147483580 -2147483579 -2147483578 -2147483577 
		-2147483576 -2147483575 -2147483574 -2147483573 -2147483572 -2147483571 -2147483570 -2147483569 -2147483568 -2147483567 -2147483566 -2147483565 
		-2147483564 -2147483563 -2147483562 -2147483561 -2147483560 -2147483559 -2147483588 -2147483587 -2147483586 -2147483585 -2147483584 -2147483583 
		-2147483582;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[90:119]";
	setAttr ".ix" -type "matrix" 4.7298294045596361 0 0 0 0 31.762117366919945 0 0 0 0 4.7298294045596361 0
		 -43.0347439867015 -22.877254556882797 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 58505;
	setAttr ".lt" -type "double3" 0 0 0.885734 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -47.764575646619548 -56.942056975887255 -4.7039226663199543 ;
	setAttr ".cbx" -type "double3" -38.304914582141862 -54.184448918882332 4.7039201290417409 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 92 ".tk[0:91]" -type "float3"  0 -0.072497845 0 0 -0.072497845
		 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845
		 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845
		 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845
		 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845
		 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845
		 0 0 -0.072497845 0 0 -0.072497845 0 0 -0.072497845 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.072497845
		 0 0 0 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759
		 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759
		 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759
		 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759
		 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759
		 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759 0 0 -0.033556759
		 0;
createNode polySphere -n "polySphere1";
	setAttr ".sa" 14;
	setAttr ".sh" 16;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "f[0:97]" "f[196:209]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 15 "f[6]" "f[12]" "f[20]" "f[26]" "f[34]" "f[40]" "f[48]" "f[54]" "f[62]" "f[68]" "f[76]" "f[82]" "f[90]" "f[96]" "f[104:110]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 7 "f[6:10]" "f[18:22]" "f[30:34]" "f[42:46]" "f[54:58]" "f[66:70]" "f[78:82]";
createNode polySplit -n "polySplit2";
	setAttr -s 9 ".e[0:8]"  1 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483533 -2147483597 -2147483604 -2147483611 -2147483618 -2147483625 
		-2147483632 -2147483639 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[67:68]";
createNode polySplit -n "polySplit3";
	setAttr -s 8 ".e[0:7]"  0.67809498 0.67809498 0.67809498 0.67809498
		 0.67809498 0.67809498 0.67809498 0.67809498;
	setAttr -s 8 ".d[0:7]"  -2147483521 -2147483522 -2147483523 -2147483524 -2147483525 -2147483526 
		-2147483527 -2147483528;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	setAttr -s 8 ".e[0:7]"  0.32190499 0.32190499 0.32190499 0.32190499
		 0.32190499 0.32190499 0.32190499 0.32190499;
	setAttr -s 8 ".d[0:7]"  -2147483646 -2147483639 -2147483632 -2147483625 -2147483618 -2147483611 
		-2147483604 -2147483597;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 89 ".tk[0:88]" -type "float3"  0.021606505 -2.7755576e-017
		 0.0012849271 0.014952183 -2.7755576e-017 -0.0070593357 0.0053363591 -2.7755576e-017
		 -0.01169008 -0.0053363591 -2.7755576e-017 -0.01169008 -0.014952123 -2.7755576e-017
		 -0.0070593357 -0.021606505 -2.7755576e-017 0.0012849271 -0.023981333 -2.7755576e-017
		 0.011690059 0.023981333 -2.7755576e-017 0.011690062 0.025207579 0 0.0014990866 0.017444193
		 0 -0.0082358718 0.0062257648 0 -0.013638377 -0.0062257499 0 -0.013638377 -0.017444193
		 0 -0.0082358718 -0.025207579 0 0.0014990866 -0.027978301 0 0.013638401 0.027978301
		 0 0.013638407 0.028808653 0 0.0017132461 0.019936204 0 -0.0094124675 0.0071151555
		 0 -0.015586734 -0.0071151406 0 -0.015586734 -0.019936204 0 -0.0094124675 -0.028808653
		 0 0.0017132461 -0.03197521 0 0.015586745 0.03197521 0 0.01558675 0.024863124 0 0
		 0.017205834 0 0 0.006140694 0 0 -0.0061406791 0 0 -0.017205834 0 0 -0.024863124 0
		 0 -0.027595997 0 0 0.027595997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 3.7092036e-009 0 0 4.383665e-009 0 -0.015586734 3.82569e-009 0 -0.013638377
		 3.3948311e-009 -2.7755576e-017 -0.01169008 -0.0036185533 -2.7755576e-017 -0.01169008
		 -0.004221648 0 -0.013638377 -0.0048247427 0 -0.015586734 -0.0041639656 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0.0036185682 -2.7755576e-017 -0.01169008 0.0042216629 0 -0.013638377
		 0.0048247576 0 -0.015586734 0.0041639805 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polySplit -n "polySplit5";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483528 -2147483533 -2147483597;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[70:71]";
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[70:71]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0:6]" "e[127]" "e[136]" "e[151]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.6627563e-007 -6.0748396 -3.9452517 ;
	setAttr ".rs" 40326;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -15.575239122646991 -6.0896643064540301 -8.1584931077049685 ;
	setAttr ".cbx" -type "double3" 15.575240855198258 -6.060015166204936 0.26798984793362352 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 89 ".tk[0:88]" -type "float3"  0.045951307 0.0081489468 0.00088456273
		 0.032410979 0.0091111735 -0.017185867 0.010133877 0.0082874466 -0.023850024 -0.010133862
		 0.0082874466 -0.023849964 -0.032410979 0.0091111735 -0.017185867 -0.045951307 0.0081489515
		 0.00088453293 -0.047683001 0.0070798369 0.021515831 0.047683001 0.0070798327 0.021515831
		 0.059661686 0.014783815 0.001727134 0.041426361 0.015726954 -0.02138561 0.014790028
		 0.014403552 -0.034227431 -0.014790013 0.014403552 -0.034227371 -0.041426361 0.015726954
		 -0.02138567 -0.059661686 0.014783815 0.0017271042 -0.066093564 0.013981164 0.030400723
		 0.066093564 0.013981149 0.030400734 0.063767731 0.019641101 0.0037922561 0.044128656
		 0.01982531 -0.020834386 0.015749335 0.019872516 -0.034501135 -0.01574932 0.019872516
		 -0.034501135 -0.044128597 0.01982531 -0.020834386 -0.063767731 0.019641101 0.0037922263
		 -0.07077688 0.019557446 0.034501139 0.07077688 0.019557446 0.034501154 0.050928771
		 0.022044897 0.0058954954 0.035582721 0.020103574 -0.013267398 0.012869194 0.01271534
		 -0.024253607 -0.012869179 0.01271534 -0.024253607 -0.035582662 0.020103574 -0.013267398
		 -0.050928771 0.022044897 0.0058954656 -0.056280553 0.022044897 0.02950459 0.056280553
		 0.022044897 0.029504599 0.034934521 0.013305306 0.0078719258 0.027770132 0.0044956803
		 -0.0064551234 0.0092968047 -0.0064677596 -0.014122546 -0.0092967898 -0.0064677596
		 -0.014122546 -0.027770132 0.0044956803 -0.0064551234 -0.034934521 0.013305306 0.0078719258
		 -0.033583939 0.015781224 0.021389693 0.033583939 0.015781224 0.021389689 0.022097051
		 -0.0077117682 0.0092398524 0.017737389 -0.016371012 0.00081908703 0.0056632534 -0.027616143
		 -0.0041816235 -0.0056632534 -0.027616143 -0.0041816235 -0.017737389 -0.016371012
		 0.00081905723 -0.022097051 -0.0077117682 0.0092398375 -0.016967595 -0.0057625175
		 0.013754299 0.016967535 -0.0057624578 0.013754286 0.011026949 -0.033256352 0.0090930611
		 0.0085544884 -0.038737774 0.0054196715 0.0026413277 -0.04616797 0.0023967326 -0.0026413351
		 -0.04616797 0.0023967326 -0.0085545033 -0.038737774 0.0054196715 -0.011026949 -0.033256352
		 0.0090930611 -0.0089237988 -0.033031344 0.010501891 0.0089237988 -0.033031344 0.010501893
		 0.0033090711 -0.054874659 0.0068849325 0.0024342313 -0.056587934 0.0059602559 0.00075929239
		 -0.059230804 0.004550308 -0.00075930357 -0.059230804 0.004550308 -0.0024342388 -0.056587934
		 0.0059602559 -0.003309086 -0.054874659 0.0068849325 -0.0029940754 -0.055234194 0.0069116568
		 0.0029940605 -0.055234134 0.0069116573 -4.2088186e-010 -0.066115141 0.0031800787
		 -3.0476954e-010 -0.060455143 0.0038697869 3.6916248e-010 -0.048586547 0.0019142628
		 -9.4218748e-009 -0.030795395 -0.0034885406 1.682551e-009 -0.0092850327 -0.012913585
		 7.7995708e-009 0.010387778 -0.024335027 1.1870313e-008 0.019446343 -0.034501135 9.1010577e-009
		 0.014783368 -0.034275055 6.5627717e-009 0.0075695049 -0.02427882 -0.0069812983 0.0074974084
		 -0.024230301 -0.010037139 0.014692143 -0.034255028 -0.010679528 0.019679725 -0.034501135
		 -0.0087423623 0.011496007 -0.024297595 -0.0058433637 -0.0079677105 -0.013090372 -0.0035697669
		 -0.029588401 -0.0038871169 -0.0016748793 -0.047528148 0.0022412241 -0.00049005076
		 -0.059739232 0.0043308586 0.0069813132 0.0074974084 -0.024230301 0.010037154 0.014692143
		 -0.034255028 0.010679543 0.019679725 -0.034501135 0.0087423772 0.011496007 -0.024297595
		 0.0058433637 -0.0079677105 -0.013090312 0.0035697594 -0.029588401 -0.0038871169 0.0016748756
		 -0.047528148 0.0022412241 0.00049003959 -0.059739232 0.0043308586;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0:6]" "e[127]" "e[136]" "e[151]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.6627563e-007 -6.0748391 -3.9452517 ;
	setAttr ".rs" 48019;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -15.575239122646991 -6.0896637695130469 -8.1584931077049685 ;
	setAttr ".cbx" -type "double3" 15.575240855198258 -6.0600148399623128 0.26798984793362352 ;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 111 ".tk[100:110]" -type "float3"  0 -0.32415542 0 0 -0.32415542
		 0 0 -0.32415542 0 0 -0.32415542 0 0 -0.32415542 0 0 -0.32415542 0 0 -0.32415542 0
		 0 -0.32415542 0 0 -0.32415542 0 0 -0.32415542 0 0 -0.32415542 0;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[90:99]";
	setAttr ".unm" no;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[4:5]" "vtx[94:95]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 111 ".tk[0:110]" -type "float3"  0 0.044726089 0.15172151 0
		 0.044726089 0.15172154 0 0.044726089 0.15172154 0 0.044726089 0.15172154 0 2.9802322e-008
		 0 0 3.3527613e-008 5.9604645e-008 0 0.044726089 0 0 0.044726089 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.044726089 0.15172154 0 0.044726089 0.15172154
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.044726089 0.15172154 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[94]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[6]" -type "float3"  0 -0.044726066 -4.4703484e-008;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 4 "vtx[3]" "vtx[73]" "vtx[93]" "vtx[96]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3]" -type "float3" 1.4901161e-008 -0.044726118 -0.15172154 ;
	setAttr ".tk[73]" -type "float3" -2.9802322e-008 -0.04472607 -0.15172154 ;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 4 "vtx[72]" "vtx[81]" "vtx[92]" "vtx[94]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[72]" -type "float3" -7.1054274e-014 -0.044726059 -0.15172154 ;
	setAttr ".tk[81]" -type "float3" 0 -0.04472607 -0.15172154 ;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[1:2]" "vtx[90:91]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[1:2]" -type "float3"  0 -0.044726059 -0.15172154
		 -1.4901161e-008 -0.044726118 -0.15172154;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[89]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr ".tk[0]" -type "float3"  0 -0.044726055 -0.15172151;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[89]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".d" 0.0001;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr ".tk[7]" -type "float3"  0 -0.044726066 1.8626451e-008;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:89]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 38376;
	setAttr ".lt" -type "double3" 0 0 0.75266 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -15.621642043191002 -10.820986530427108 -8.1584931077049685 ;
	setAttr ".cbx" -type "double3" 15.621643775742267 7.4378408589272853 0.40423696693588951 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 2 "f[196:201]" "f[204:207]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 52830;
	setAttr ".lt" -type "double3" 0 0 39.157883 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -16.274186686728143 -10.82098566044678 -8.9111530844085465 ;
	setAttr ".cbx" -type "double3" 16.274188419279408 -10.791337600876375 6.0130289757892033e-008 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 200 ".tk";
	setAttr ".tk[6:171]" -type "float3"  0 0 -0.033205681 0 0 -0.033205897 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.044038936 0 0 -0.044039134 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.050087702 0 0 -0.050087895 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 -0.029504428 0 0 -0.029504586 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 -0.021389559 0 0 -0.021389676 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.013754192
		 0 0 -0.013754278 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.010501816 0 0 -0.010501883
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0069116149 0 0 -0.0069116503 0 0 -0.0031800715
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.033205703 0 0 -0.033205885 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0.0015989625 0 0 -0.0093091633 0 0 0.0015987409 0 0 -0.0093093785 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.017252093 0 0 -0.017252307 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.001781724 0 0 -0.0017819051 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00040105925 0 0 0.00040093463 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0022497489 0 0 0.0022496888 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.00096303871 0 0 -0.00096308283 0 0
		 0 0 0 0;
	setAttr ".tk[178:199]" 0 0 -0.0032577212 0 0 -0.0032577554 0 0 -0.0023004925
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0.0013925484 0 0 0.0013923675 0 0 0 0 0 0;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[71:72]";
createNode polySplit -n "polySplit6";
	setAttr -s 20 ".e[0:19]"  0.57037002 0.57037002 0.57037002 0.57037002
		 0.57037002 0.57037002 0.57037002 0.57037002 0.57037002 0.57037002 0.57037002 0.57037002
		 0.57037002 0.57037002 0.57037002 0.57037002 0.57037002 0.57037002 0.57037002 0.57037002;
	setAttr -s 20 ".d[0:19]"  -2147483327 -2147483346 -2147483365 -2147483384 -2147483403 -2147483422 
		-2147483446 -2147483448 -2147483266 -2147483227 -2147483231 -2147483471 -2147483645 -2147483638 -2147483631 -2147483624 -2147483617 -2147483610 
		-2147483603 -2147483596;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	setAttr -s 20 ".e[0:19]"  0.42963001 0.42963001 0.42963001 0.42963001
		 0.42963001 0.42963001 0.42963001 0.42963001 0.42963001 0.42963001 0.42963001 0.42963001
		 0.42963001 0.42963001 0.42963001 0.42963001 0.42963001 0.42963001 0.42963001 0.42963001;
	setAttr -s 20 ".d[0:19]"  -2147483332 -2147483351 -2147483370 -2147483389 -2147483408 -2147483427 
		-2147483453 -2147483455 -2147483271 -2147483239 -2147483242 -2147483476 -2147483647 -2147483640 -2147483633 -2147483626 -2147483619 -2147483612 
		-2147483605 -2147483598;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	setAttr -s 20 ".e[0:19]"  0.38750699 0.38750699 0.38750699 0.38750699
		 0.38750699 0.38750699 0.38750699 0.38750699 0.38750699 0.38750699 0.38750699 0.38750699
		 0.38750699 0.38750699 0.38750699 0.38750699 0.38750699 0.38750699 0.38750699 0.38750699;
	setAttr -s 20 ".d[0:19]"  -2147483335 -2147483354 -2147483373 -2147483392 -2147483411 -2147483430 
		-2147483457 -2147483459 -2147483273 -2147483245 -2147483249 -2147483478 -2147483648 -2147483641 -2147483634 -2147483627 -2147483620 -2147483613 
		-2147483606 -2147483599;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	setAttr -s 20 ".e[0:19]"  0.61249298 0.61249298 0.61249298 0.61249298
		 0.61249298 0.61249298 0.61249298 0.61249298 0.61249298 0.61249298 0.61249298 0.61249298
		 0.61249298 0.61249298 0.61249298 0.61249298 0.61249298 0.61249298 0.61249298 0.61249298;
	setAttr -s 20 ".d[0:19]"  -2147483324 -2147483343 -2147483362 -2147483381 -2147483400 -2147483419 
		-2147483442 -2147483444 -2147483264 -2147483221 -2147483224 -2147483469 -2147483644 -2147483637 -2147483630 -2147483623 -2147483616 -2147483609 
		-2147483602 -2147483595;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	setAttr ".ics" -type "componentList" 26 "e[170]" "e[172]" "e[174]" "e[177]" "e[179]" "e[181]" "e[183]" "e[186:188]" "e[375]" "e[377]" "e[379]" "e[382]" "e[384]" "e[386:387]" "e[389]" "e[391]" "e[393]" "e[395:396]" "e[458]" "e[461]" "e[497]" "e[500]" "e[536]" "e[539]" "e[575]" "e[578]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit10";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483345 -2147483330 -2147483348;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483356 -2147483337 -2147483353;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 3 "f[170:185]" "f[192]" "f[203]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 50055;
	setAttr ".lt" -type "double3" 0 0 1.378244 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -16.30919808270146 -49.978574427504412 -0.14332102668025373 ;
	setAttr ".cbx" -type "double3" 16.309199815252725 8.1897926950905813 6.0130289757892033e-008 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 310 ".tk[272:309]" -type "float3"  0 0 0.00981462 0 0 0.00981462
		 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462
		 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462
		 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462
		 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462
		 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462
		 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462 0 0 0.00981462;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 8 "f[186:191]" "f[193:196]" "f[216]" "f[233]" "f[250]" "f[267]" "f[313]" "f[316]";
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".cch" yes;
	setAttr ".ics" -type "componentList" 17 "f[267]" "f[269]" "f[271]" "f[273]" "f[275]" "f[277]" "f[279]" "f[281]" "f[283]" "f[285]" "f[287]" "f[289]" "f[291]" "f[293]" "f[295]" "f[297]" "f[299:300]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 -1.3857892788097796 1;
	setAttr ".ws" yes;
	setAttr ".rs" 39207;
	setAttr ".lt" -type "double3" 0 0 5.158185 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -16.30919808270146 -49.983077445677964 -1.5291102904574609 ;
	setAttr ".cbx" -type "double3" 16.309199815252725 8.1897926950905813 0.07166419795676493 ;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[336]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[337]";
createNode polySplit -n "polySplit12";
	setAttr -s 19 ".e[0:18]"  0.78832 0.78832 0.78832 0.78832 0.78832 0.78832
		 0.78832 0.78832 0.78832 0.78832 0.78832 0.78832 0.78832 0.78832 0.78832 0.78832 0.78832
		 0.78832 0.78832;
	setAttr -s 19 ".d[0:18]"  -2147482966 -2147483053 -2147483051 -2147483038 -2147483028 -2147483018 
		-2147483008 -2147482998 -2147482988 -2147482978 -2147482983 -2147482993 -2147483003 -2147483013 -2147483023 -2147483033 -2147483045 -2147483043 
		-2147482971;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	setAttr -s 19 ".e[0:18]"  0.253436 0.253436 0.253436 0.253436 0.253436
		 0.253436 0.253436 0.253436 0.253436 0.253436 0.253436 0.253436 0.253436 0.253436
		 0.253436 0.253436 0.253436 0.253436 0.253436;
	setAttr -s 19 ".d[0:18]"  -2147482966 -2147483053 -2147483051 -2147483038 -2147483028 -2147483018 
		-2147483008 -2147482998 -2147482988 -2147482978 -2147482983 -2147482993 -2147483003 -2147483013 -2147483023 -2147483033 -2147483045 -2147483043 
		-2147482971;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	setAttr -s 19 ".e[0:18]"  0.67782801 0.67782801 0.67782801 0.67782801
		 0.67782801 0.67782801 0.67782801 0.67782801 0.67782801 0.67782801 0.67782801 0.67782801
		 0.67782801 0.67782801 0.67782801 0.67782801 0.67782801 0.67782801 0.67782801;
	setAttr -s 19 ".d[0:18]"  -2147482908 -2147482909 -2147482910 -2147482911 -2147482912 -2147482913 
		-2147482914 -2147482915 -2147482916 -2147482917 -2147482918 -2147482919 -2147482920 -2147482921 -2147482922 -2147482923 -2147482924 -2147482925 
		-2147482926;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:391]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 -0.76375704337852168 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 9.5367431640625e-007 -18.322908401489258 -4.8016369938850403 ;
	setAttr ".ps" -type "double2" 42.863046646118164 63.332118988037109 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 114 ".tk";
	setAttr ".tk[272]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[273]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[274]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[275]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[276]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[277]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[278]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[279]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[280]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[281]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[282]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[283]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[284]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[285]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[286]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[287]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[288]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[289]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[290]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[291]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[292]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[293]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[294]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[295]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[296]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[297]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[298]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[299]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[300]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[301]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[302]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[303]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[304]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[305]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[306]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[307]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[308]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[309]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[312]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[313]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[316]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[317]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[319]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[321]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[323]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[325]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[327]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[329]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[331]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[333]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[335]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[337]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[339]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[341]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[343]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[345]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[347]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[348]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[349]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[350]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[351]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[352]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[353]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[354]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[355]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[356]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[357]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[358]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[359]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[360]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[361]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[362]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[363]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[364]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[365]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[366]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[367]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[368]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[369]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[370]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[371]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[372]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[373]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[374]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[375]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[376]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[377]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[378]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[379]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[380]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[381]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[382]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[383]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[384]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[385]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[386]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[387]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[388]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[389]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[390]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[391]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[392]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[393]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[394]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[395]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[396]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[397]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[398]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[399]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[400]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[401]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[402]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[403]" -type "float3" 0 0 -0.077072799 ;
	setAttr ".tk[404]" -type "float3" 0 0 -0.077072799 ;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".ics" -type "componentList" 11 "e[346:347]" "e[349]" "e[351]" "e[354]" "e[356]" "e[358:359]" "e[370]" "e[373:377]" "e[386:387]" "e[420:421]" "e[454:455]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 -0.76375704337852168 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 245;
	setAttr ".sv2" 262;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".ics" -type "componentList" 3 "e[361]" "e[363]" "e[488:489]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 -0.76375704337852168 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 263;
	setAttr ".sv2" 193;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	setAttr ".ics" -type "componentList" 2 "e[590]" "e[807]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 -0.76375704337852168 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 309;
	setAttr ".sv2" 193;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	setAttr ".ics" -type "componentList" 4 "e[342]" "e[344]" "e[365]" "e[367]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 -0.76375704337852168 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 194;
	setAttr ".sv2" 244;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	setAttr ".ics" -type "componentList" 2 "e[586]" "e[810]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 -0.76375704337852168 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 307;
	setAttr ".sv2" 194;
createNode polySplit -n "polySplit15";
	setAttr -s 19 ".e[0:18]"  0.74409097 0.74409097 0.74409097 0.74409097
		 0.74409097 0.74409097 0.74409097 0.74409097 0.74409097 0.74409097 0.74409097 0.74409097
		 0.74409097 0.74409097 0.74409097 0.74409097 0.74409097 0.74409097 0.74409097;
	setAttr -s 19 ".d[0:18]"  -2147482973 -2147483048 -2147483047 -2147483035 -2147483025 -2147483015 
		-2147483005 -2147482995 -2147482985 -2147482980 -2147482990 -2147483000 -2147483010 -2147483020 -2147483030 -2147483040 -2147483055 -2147483056 
		-2147482968;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	setAttr -s 19 ".e[0:18]"  0.78311199 0.78311199 0.78311199 0.78311199
		 0.78311199 0.78311199 0.78311199 0.78311199 0.78311199 0.78311199 0.78311199 0.78311199
		 0.78311199 0.78311199 0.78311199 0.78311199 0.78311199 0.78311199 0.78311199;
	setAttr -s 19 ".d[0:18]"  -2147482973 -2147483048 -2147483047 -2147483035 -2147483025 -2147483015 
		-2147483005 -2147482995 -2147482985 -2147482980 -2147482990 -2147483000 -2147483010 -2147483020 -2147483030 -2147483040 -2147483055 -2147483056 
		-2147482968;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	setAttr -s 19 ".e[0:18]"  0.319318 0.319318 0.319318 0.319318 0.319318
		 0.319318 0.319318 0.319318 0.319318 0.319318 0.319318 0.319318 0.319318 0.319318
		 0.319318 0.319318 0.319318 0.319318 0.319318;
	setAttr -s 19 ".d[0:18]"  -2147482973 -2147483048 -2147483047 -2147483035 -2147483025 -2147483015 
		-2147483005 -2147482995 -2147482985 -2147482980 -2147482990 -2147483000 -2147483010 -2147483020 -2147483030 -2147483040 -2147483055 -2147483056 
		-2147482968;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	setAttr ".ics" -type "componentList" 8 "e[675]" "e[677]" "e[703]" "e[740]" "e[759]" "e[813]" "e[850]" "e[887]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 -0.76375704337852168 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 195;
	setAttr ".sv2" 345;
createNode polyBridgeEdge -n "polyBridgeEdge7";
	setAttr ".ics" -type "componentList" 8 "e[680]" "e[682]" "e[685]" "e[722]" "e[777]" "e[831]" "e[868]" "e[905]";
	setAttr ".ix" -type "matrix" 14.533693406222421 0 0 0 0 14.595847865065998 0 0 0 0 8.0705508752859387 0
		 0 -6.1930004677671837 -0.76375704337852168 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 346;
	setAttr ".sv2" 308;
createNode objectSet -n "topoSymmetrySet";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "vtx[96]" "vtx[199]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
connectAttr "polyExtrudeFace1.out" "pCylinderShape1.i";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "groupId1.id" "pSphereShape1.iog.og[0].gid";
connectAttr "groupId2.id" "pSphereShape1.iog.og[1].gid";
connectAttr "groupId3.id" "pSphereShape1.iog.og[2].gid";
connectAttr "groupId4.id" "pSphereShape1.iog.og[3].gid";
connectAttr "groupId5.id" "pSphereShape1.iog.og[4].gid";
connectAttr "topoSymmetrySet.mwc" "pSphereShape1.iog.og[4].gco";
connectAttr "groupParts5.og" "pSphereShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polySplit1.ip";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit1.out" "polyTweak1.ip";
connectAttr "polySphere1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polySplit2.ip";
connectAttr "polySplit2.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit5.ip";
connectAttr "polySplit5.out" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "polyTweak3.out" "polyExtrudeEdge1.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "groupParts3.og" "polyTweak3.ip";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeEdge2.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyTweak4.out" "polySoftEdge1.ip";
connectAttr "pSphereShape1.wm" "polySoftEdge1.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak4.ip";
connectAttr "polySoftEdge1.out" "polyNormal1.ip";
connectAttr "polyTweak5.out" "polyMergeVert1.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert1.mp";
connectAttr "polyNormal1.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert2.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert3.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyMergeVert4.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyMergeVert5.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert6.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyMergeVert7.ip";
connectAttr "pSphereShape1.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak11.ip";
connectAttr "polyMergeVert7.out" "polyExtrudeFace2.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak12.out" "polyExtrudeFace3.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak12.ip";
connectAttr "polyExtrudeFace3.out" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts4.og" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polyExtrudeFace4.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyExtrudeFace5.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polyTweak14.out" "polyPlanarProj1.ip";
connectAttr "pSphereShape1.wm" "polyPlanarProj1.mp";
connectAttr "polySplit14.out" "polyTweak14.ip";
connectAttr "polyPlanarProj1.out" "polyBridgeEdge1.ip";
connectAttr "pSphereShape1.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "pSphereShape1.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "pSphereShape1.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "polyBridgeEdge4.ip";
connectAttr "pSphereShape1.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "polyBridgeEdge5.ip";
connectAttr "pSphereShape1.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polyBridgeEdge6.ip";
connectAttr "pSphereShape1.wm" "polyBridgeEdge6.mp";
connectAttr "polyBridgeEdge6.out" "polyBridgeEdge7.ip";
connectAttr "pSphereShape1.wm" "polyBridgeEdge7.mp";
connectAttr "groupId5.msg" "topoSymmetrySet.gn" -na;
connectAttr "pSphereShape1.iog.og[4]" "topoSymmetrySet.dsm" -na;
connectAttr "polyBridgeEdge7.out" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"|imagePlane1|imagePlaneShape1\" \"imageName\" \"C:/Users/tekt/creations/broadway/touch/theatre-front-raw.png\" 1529697848 \"C:/Users/tekt/creations/broadway/touch/theatre-front-raw.png\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of la_theatre_model.ma
