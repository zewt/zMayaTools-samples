//Maya ASCII 2018 scene
//Name: zHeadController animation.ma
//Last modified: Sat, Dec 16, 2017 10:34:25 PM
//Codeset: 932
file -rdi 1 -ns "head" -rfn "headRN" -op "v=0;" -typ "mayaAscii" "S:/maya//assets/head-expressions/Head.ma";
file -r -ns "head" -dr 1 -rfn "headRN" -op "v=0;" -typ "mayaAscii" "S:/maya//assets/head-expressions/Head.ma";
requires maya "2018";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	rename -uid "7CC684A9-4471-C534-8B56-2898E4BED424";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.1819882200923892 22.425463054844506 91.407929953273438 ;
	setAttr ".r" -type "double3" 3.8616472704896179 -722.59999999971694 1.2436844587991144e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "569A816E-403D-4ED2-5297-6BB276ACBDEC";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 76.644648577439639;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 26.999761950518767 -0.01734420657157365 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8143CE10-4239-1743-E481-78A00236605A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "7A1F08A6-4A85-07C1-9F04-AA9489DBA4F5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B4C44D08-4A76-BFAB-0446-14B8C3237FBF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "50ED17AC-4DE2-F72F-735B-38B7B14066FE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 137.60177134708121;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8FB4C485-4C0E-BFEB-FB17-D0913B0FC231";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5A6F7096-4AA9-9B5C-498F-1CBF4EF84AAC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5623D204-49E0-ED26-3BB6-779135B23139";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "28029B4E-4E43-53AB-81D0-31A95723CEE8";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "57ECDAEB-4EC0-AC2B-FCA5-8FA1710000A8";
createNode displayLayerManager -n "layerManager";
	rename -uid "E0CC8440-4F51-08B5-4C3E-75A388A68B47";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "D5CE19D4-4211-0ACF-C768-E7828E79B0D1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5970BF7D-4758-5BBD-EB02-8CA0540293B6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2701BB77-40C9-9790-CC74-46AAC247BE6B";
	setAttr ".g" yes;
createNode blindDataTemplate -n "blindDataTemplate1";
	rename -uid "B4A790A5-4008-3FA0-77B0-2688DA3AFDDD";
	addAttr -ci true -sn "MaxVisibility" -ln "MaxVisibility" -min 0 -max 1 -at "bool";
	setAttr ".tid" 16180;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "FD53385C-4C84-CA54-DBC5-F4977E550CA9";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 175 -ast 1 -aet 175 ";
	setAttr ".st" 6;
createNode audio -n "audio";
	rename -uid "470F01C3-4D83-1A67-7F9B-868A3E0754B5";
	setAttr ".ef" 180;
	setAttr ".se" 180;
	setAttr ".f" -type "string" "F:/stuff/maya/assets/new/head-expressions/audio.wav";
createNode timeEditor -s -n "timeEditor";
	rename -uid "28B44934-45DD-2373-DE78-918D7195BE0C";
createNode animCurveTU -n "zMouthController1_choice1";
	rename -uid "84A4A643-4ED0-7272-F00A-C69DAC09629D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  6 0 25 7 47 4 59 1 64 7 84 3 94 2 109 4
		 115 3 133 6 140 1;
	setAttr -s 11 ".kit[0:10]"  18 18 18 18 18 18 1 18 
		18 18 18;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
createNode animCurveTU -n "zMouthController1_choice2";
	rename -uid "B0EA523B-45D0-5D4B-4555-889608E0299E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  3 0 8 1 33 6 58 6 88 5 109 7 133 7 149 5;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode character -n "Face";
	rename -uid "023DC554-45DD-4ADE-45E9-21B93E89A5BB";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 6 ".dnsm";
	setAttr -s 6 ".uv[1:6]"  1 1 0.0016611295681063123 0 0 0;
	setAttr -s 6 ".uv";
	setAttr ".am" -type "characterMapping" 6 "head:zMouthController1.weight2" 0 
		1 "head:zMouthController1.weight1" 0 2 "head:zMouthController1.mainWeight" 
		0 3 "head:zMouthController1.choice2" 0 4 "head:zMouthController1.choice1" 
		0 5 "head:zMouthController1.selection" 0 6  ;
	setAttr ".aal" -type "attributeAlias" {"zMouthController1_weight2","unitlessValues[1]"
		,"zMouthController1_weight1","unitlessValues[2]","zMouthController1_mainWeight","unitlessValues[3]"
		,"zMouthController1_choice2","unitlessValues[4]","zMouthController1_choice1","unitlessValues[5]"
		,"zMouthController1_selection","unitlessValues[6]"} ;
createNode animCurveTU -n "Face_zMouthController1_mainWeight";
	rename -uid "DC602CAC-4D3C-3DC2-514C-E8AD708F8D96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  6 0.0016611295681063123 15 0.5299003322259136
		 20 0.27408637873754155 22 0.52159468438538203 35 0.15282392026578073 39 0.67808219178082196
		 43 0.37375415282392027 47 0 51 0.37375415282392027 56 0.09634551495016612 59 0 62 0.90863787375415284
		 64 0.67940199335548168 81 0.3538205980066445 84 0.22093023255813954 88 0.62458471760797341
		 94 0 98 0.61041153254897684 108 0 111 0 114 0.75747508305647837 118 0.76079734219269102
		 121 0.29568106312292358 124 0.16283087698817972 128 0.29568106312292358 133 0 137 0.73920265780730898
		 139 0.30013031128787626 143 0.73920265780730898 146 0.41850047000295226 149 0.14451827242524917
		 153 0.43853820598006643 161 0.517578042547993 165 0;
	setAttr -s 34 ".kit[23:33]"  1 18 18 18 18 1 18 18 
		18 18 18;
	setAttr -s 34 ".kot[23:33]"  1 18 18 18 18 1 18 18 
		18 18 18;
	setAttr -s 34 ".kix[23:33]"  1 1 1 1 1 1 0.3187683052845221 1 0.74729454566384146 
		1 1;
	setAttr -s 34 ".kiy[23:33]"  0 0 0 0 0 0 -0.94783266853703341 0 0.66449293602044601 
		0 0;
	setAttr -s 34 ".kox[23:33]"  1 1 1 1 1 1 0.3187683052845221 1 0.74729454566384157 
		1 1;
	setAttr -s 34 ".koy[23:33]"  0 0 0 0 0 0 -0.94783266853703341 0 0.66449293602044612 
		0 0;
createNode animCurveTU -n "Face_zMouthController1_selection";
	rename -uid "3653BAE8-4713-36CC-EC9B-478886D21DC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  20 0 25 1 28 0 32 0 35 1 43 0.14657534246575343
		 59 0 61 0 64 1 67 0.52325581395348841 69 1 73 0.56644518272425248 84 1 88 0 91 0.69102990033222589
		 94 1 100 0 113 0 115 0.6312292358803987 118 0.02823920265780731 133 0.02823920265780731
		 135 0.02823920265780731 139 1 143 0 146 0.70431893687707636 149 1 153 1 157 0 162 1;
	setAttr -s 29 ".kit[3:28]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 29 ".kot[3:28]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18;
	setAttr -s 29 ".kix[3:28]"  1 1 0.77156780789916435 1 1 1 1 1 1 1 1 
		0.19611613513818418 1 1 1 1 1 1 1 1 1 0.19611613513818418 1 1 1 1;
	setAttr -s 29 ".kiy[3:28]"  0 0 -0.6361470881908351 0 0 0 0 0 0 0 0 
		0.98058067569092011 0 0 0 0 0 0 0 0 0 0.98058067569092 0 0 0 0;
	setAttr -s 29 ".kox[3:28]"  1 1 0.77156780789916435 1 1 1 1 1 1 1 1 
		0.19611613513818418 1 1 1 1 1 1 1 1 1 0.19611613513818421 1 1 1 1;
	setAttr -s 29 ".koy[3:28]"  0 0 -0.6361470881908351 0 0 0 0 0 0 0 0 
		0.98058067569092011 0 0 0 0 0 0 0 0 0 0.98058067569092022 0 0 0 0;
createNode reference -n "headRN";
	rename -uid "3C7DE900-4B8E-E079-2FF9-7E96E40DB1E0";
	setAttr -s 2 ".fn";
	setAttr ".fn[0]" -type "string" "F:/stuff/maya/assets/new/head-expressions/Head.ma";
	setAttr ".fn[1]" -type "string" "F:/stuff/maya//assets/new/head-expressions/head2.ma";
	setAttr -s 58 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"headRN"
		"headRN" 2
		2 "head:audio" "endFrame" " 180"
		2 "head:audio" "sourceEnd" " 180"
		"headRN" 59
		2 "|head:Root" "visibility" " 0"
		5 3 "headRN" "|head:Meshes.message" "headRN.placeHolderList[1]" ""
		5 3 "headRN" "|head:Meshes|head:Head.message" "headRN.placeHolderList[2]" 
		""
		5 3 "headRN" "|head:Meshes|head:Head|head:HeadShape.message" "headRN.placeHolderList[3]" 
		""
		5 3 "headRN" "|head:Meshes|head:Head|head:HeadShapeOrig.message" "headRN.placeHolderList[4]" 
		""
		5 3 "headRN" "|head:Meshes|head:Eye_Left.message" "headRN.placeHolderList[5]" 
		""
		5 3 "headRN" "|head:Meshes|head:Eye_Left|head:Eye_LeftShape.message" 
		"headRN.placeHolderList[6]" ""
		5 3 "headRN" "|head:Meshes|head:Eye_Left|head:Eye_Left_parentConstraint1.message" 
		"headRN.placeHolderList[7]" ""
		5 3 "headRN" "|head:Meshes|head:Eye_Right.message" "headRN.placeHolderList[8]" 
		""
		5 3 "headRN" "|head:Meshes|head:Eye_Right|head:Eye_RightShape.message" 
		"headRN.placeHolderList[9]" ""
		5 3 "headRN" "|head:Meshes|head:Eye_Right|head:Eye_Right_parentConstraint1.message" 
		"headRN.placeHolderList[10]" ""
		5 3 "headRN" "|head:Meshes|head:Collar.message" "headRN.placeHolderList[11]" 
		""
		5 3 "headRN" "|head:Meshes|head:Collar|head:CollarShape.message" "headRN.placeHolderList[12]" 
		""
		5 3 "headRN" "|head:Meshes|head:Collar|head:CollarShapeOrig.message" 
		"headRN.placeHolderList[13]" ""
		5 3 "headRN" "|head:Root.message" "headRN.placeHolderList[14]" ""
		5 3 "headRN" "|head:Root|head:Head.message" "headRN.placeHolderList[15]" 
		""
		5 3 "headRN" "|head:Root|head:Head|head:Eye_Left.message" "headRN.placeHolderList[16]" 
		""
		5 3 "headRN" "|head:Root|head:Head|head:Eye_Right.message" "headRN.placeHolderList[17]" 
		""
		5 3 "headRN" "head:shapeEditorManager.message" "headRN.placeHolderList[18]" 
		""
		5 3 "headRN" "head:poseInterpolatorManager.message" "headRN.placeHolderList[19]" 
		""
		5 3 "headRN" "head:layerManager.message" "headRN.placeHolderList[20]" 
		""
		5 3 "headRN" "head:defaultLayer.message" "headRN.placeHolderList[21]" 
		""
		5 3 "headRN" "head:renderLayerManager.message" "headRN.placeHolderList[22]" 
		""
		5 3 "headRN" "head:defaultRenderLayer.message" "headRN.placeHolderList[23]" 
		""
		5 3 "headRN" "head:blindDataTemplate1.message" "headRN.placeHolderList[24]" 
		""
		5 3 "headRN" "head:mat_head.message" "headRN.placeHolderList[25]" ""
		
		5 3 "headRN" "head:soldier_headSG.message" "headRN.placeHolderList[26]" 
		""
		5 3 "headRN" "head:materialInfo1.message" "headRN.placeHolderList[27]" 
		""
		5 3 "headRN" "head:tex_head.message" "headRN.placeHolderList[28]" ""
		
		5 3 "headRN" "head:place2dTexture1.message" "headRN.placeHolderList[29]" 
		""
		5 3 "headRN" "head:BS_Face.message" "headRN.placeHolderList[30]" ""
		5 3 "headRN" "head:tweak1.message" "headRN.placeHolderList[31]" ""
		5 3 "headRN" "head:blendShape1Set.message" "headRN.placeHolderList[32]" 
		""
		5 3 "headRN" "head:blendShape1GroupId.message" "headRN.placeHolderList[33]" 
		""
		5 3 "headRN" "head:blendShape1GroupParts.message" "headRN.placeHolderList[34]" 
		""
		5 3 "headRN" "head:tweakSet1.message" "headRN.placeHolderList[35]" ""
		
		5 3 "headRN" "head:groupId2.message" "headRN.placeHolderList[36]" ""
		
		5 3 "headRN" "head:groupParts2.message" "headRN.placeHolderList[37]" 
		""
		5 3 "headRN" "head:groupParts4.message" "headRN.placeHolderList[38]" 
		""
		5 3 "headRN" "head:sceneConfigurationScriptNode.message" "headRN.placeHolderList[39]" 
		""
		5 3 "headRN" "head:groupParts5.message" "headRN.placeHolderList[40]" 
		""
		5 3 "headRN" "head:groupId18.message" "headRN.placeHolderList[41]" ""
		
		5 3 "headRN" "head:groupParts6.message" "headRN.placeHolderList[42]" 
		""
		5 3 "headRN" "head:groupParts7.message" "headRN.placeHolderList[43]" 
		""
		5 3 "headRN" "head:groupParts8.message" "headRN.placeHolderList[44]" 
		""
		5 3 "headRN" "head:zMouthController1.message" "headRN.placeHolderList[45]" 
		""
		5 3 "headRN" "head:zMouthController1.choice1" "headRN.placeHolderList[46]" 
		""
		5 4 "headRN" "head:zMouthController1.choice1" "headRN.placeHolderList[47]" 
		""
		5 3 "headRN" "head:zMouthController1.choice2" "headRN.placeHolderList[48]" 
		""
		5 4 "headRN" "head:zMouthController1.choice2" "headRN.placeHolderList[49]" 
		""
		5 3 "headRN" "head:zMouthController1.mainWeight" "headRN.placeHolderList[50]" 
		""
		5 4 "headRN" "head:zMouthController1.mainWeight" "headRN.placeHolderList[51]" 
		""
		5 3 "headRN" "head:zMouthController1.selection" "headRN.placeHolderList[52]" 
		""
		5 4 "headRN" "head:zMouthController1.selection" "headRN.placeHolderList[53]" 
		""
		5 3 "headRN" "head:zMouthController1.weight1" "headRN.placeHolderList[54]" 
		""
		5 4 "headRN" "head:zMouthController1.weight1" "headRN.placeHolderList[55]" 
		""
		5 3 "headRN" "head:zMouthController1.weight2" "headRN.placeHolderList[56]" 
		""
		5 4 "headRN" "head:zMouthController1.weight2" "headRN.placeHolderList[57]" 
		""
		5 3 "headRN" "head:MayaNodeEditorSavedTabsInfo.message" "headRN.placeHolderList[58]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "3D3A0E47-466A-D571-CAA5-848A40BCB685";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "CDFC7AEA-4A0C-C7D8-1759-5A833A640739";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -532.44229597568278 -485.71426641373483 ;
	setAttr ".tgi[0].vh" -type "double2" 1072.9184649752801 332.14284394468632 ;
	setAttr -s 49 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1394.2857666015625;
	setAttr ".tgi[0].ni[0].y" 1168.5714111328125;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1104.2857666015625;
	setAttr ".tgi[0].ni[1].y" 134.28572082519531;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1411.4285888671875;
	setAttr ".tgi[0].ni[2].y" 195.71427917480469;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -755.71429443359375;
	setAttr ".tgi[0].ni[3].y" 737.14288330078125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1724.2857666015625;
	setAttr ".tgi[0].ni[4].y" -230;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 780;
	setAttr ".tgi[0].ni[5].y" 1107.142822265625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[6].y" -1290;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[7].y" -1138.5714111328125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1394.2857666015625;
	setAttr ".tgi[0].ni[8].y" 505.71429443359375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[9].y" 195.71427917480469;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1718.5714111328125;
	setAttr ".tgi[0].ni[10].y" 195.71427917480469;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[11].y" 72.857139587402344;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 2008.5714111328125;
	setAttr ".tgi[0].ni[12].y" 1225.7142333984375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1394.2857666015625;
	setAttr ".tgi[0].ni[13].y" 1045.7142333984375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[14].y" -987.14288330078125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1394.2857666015625;
	setAttr ".tgi[0].ni[15].y" 922.85711669921875;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -1677.142822265625;
	setAttr ".tgi[0].ni[16].y" 887.14288330078125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1718.5714111328125;
	setAttr ".tgi[0].ni[17].y" 72.857139587402344;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[18].y" -835.71429443359375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 2008.5714111328125;
	setAttr ".tgi[0].ni[19].y" 562.85711669921875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1090;
	setAttr ".tgi[0].ni[20].y" 134.28572082519531;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1411.4285888671875;
	setAttr ".tgi[0].ni[21].y" 72.857139587402344;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[22].y" -684.28570556640625;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 780;
	setAttr ".tgi[0].ni[23].y" 597.14288330078125;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 2008.5714111328125;
	setAttr ".tgi[0].ni[24].y" 832.85711669921875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -755.71429443359375;
	setAttr ".tgi[0].ni[25].y" 917.14288330078125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 2011.4285888671875;
	setAttr ".tgi[0].ni[26].y" -381.42855834960938;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 165.71427917480469;
	setAttr ".tgi[0].ni[27].y" 680;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1394.2857666015625;
	setAttr ".tgi[0].ni[28].y" 800;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[29].y" 932.85711669921875;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -141.42857360839844;
	setAttr ".tgi[0].ni[30].y" 757.14288330078125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 1087.142822265625;
	setAttr ".tgi[0].ni[31].y" 975.71429443359375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[32].y" -230;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -1062.857177734375;
	setAttr ".tgi[0].ni[33].y" 730;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -1062.857177734375;
	setAttr ".tgi[0].ni[34].y" 855.71429443359375;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -1677.142822265625;
	setAttr ".tgi[0].ni[35].y" 764.28570556640625;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 165.71427917480469;
	setAttr ".tgi[0].ni[36].y" 802.85711669921875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 2008.5714111328125;
	setAttr ".tgi[0].ni[37].y" 685.71429443359375;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[38].y" 347.14285278320313;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[39].y" -532.85711669921875;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" -448.57144165039063;
	setAttr ".tgi[0].ni[40].y" 827.14288330078125;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" -1370;
	setAttr ".tgi[0].ni[41].y" 855.71429443359375;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 1701.4285888671875;
	setAttr ".tgi[0].ni[42].y" 470;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1724.2857666015625;
	setAttr ".tgi[0].ni[43].y" -78.571426391601563;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[44].y" -78.571426391601563;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 472.85714721679688;
	setAttr ".tgi[0].ni[45].y" 670;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 780;
	setAttr ".tgi[0].ni[46].y" 1005.7142944335938;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 1087.142822265625;
	setAttr ".tgi[0].ni[47].y" 548.5714111328125;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" -755.71429443359375;
	setAttr ".tgi[0].ni[48].y" 1097.142822265625;
	setAttr ".tgi[0].ni[48].nvs" 18304;
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :characterPartition;
connectAttr "headRN.phl[1]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "headRN.phl[2]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "headRN.phl[3]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "headRN.phl[4]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "headRN.phl[5]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "headRN.phl[6]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "headRN.phl[7]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "headRN.phl[8]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "headRN.phl[9]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "headRN.phl[10]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "headRN.phl[11]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "headRN.phl[12]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "headRN.phl[13]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "headRN.phl[14]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "headRN.phl[15]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "headRN.phl[16]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "headRN.phl[17]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "headRN.phl[18]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "headRN.phl[19]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "headRN.phl[20]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "headRN.phl[21]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn";
connectAttr "headRN.phl[22]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "headRN.phl[23]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "headRN.phl[24]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn";
connectAttr "headRN.phl[25]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "headRN.phl[26]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "headRN.phl[27]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "headRN.phl[28]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "headRN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn";
connectAttr "headRN.phl[30]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn";
connectAttr "headRN.phl[31]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "headRN.phl[32]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "headRN.phl[33]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "headRN.phl[34]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "headRN.phl[35]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "headRN.phl[36]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn";
connectAttr "headRN.phl[37]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "headRN.phl[38]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "headRN.phl[39]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "headRN.phl[40]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn";
connectAttr "headRN.phl[41]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "headRN.phl[42]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn";
connectAttr "headRN.phl[43]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "headRN.phl[44]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "headRN.phl[45]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "headRN.phl[46]" "Face.dnsm[4]";
connectAttr "Face.uv[5]" "headRN.phl[47]";
connectAttr "headRN.phl[48]" "Face.dnsm[3]";
connectAttr "Face.uv[4]" "headRN.phl[49]";
connectAttr "headRN.phl[50]" "Face.dnsm[2]";
connectAttr "Face.uv[3]" "headRN.phl[51]";
connectAttr "headRN.phl[52]" "Face.dnsm[5]";
connectAttr "Face.uv[6]" "headRN.phl[53]";
connectAttr "headRN.phl[54]" "Face.dnsm[1]";
connectAttr "Face.uv[2]" "headRN.phl[55]";
connectAttr "headRN.phl[56]" "Face.dnsm[0]";
connectAttr "Face.uv[1]" "headRN.phl[57]";
connectAttr "headRN.phl[58]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Face_zMouthController1_mainWeight.o" "Face.uv[3]";
connectAttr "zMouthController1_choice2.o" "Face.uv[4]";
connectAttr "zMouthController1_choice1.o" "Face.uv[5]";
connectAttr "Face_zMouthController1_selection.o" "Face.uv[6]";
connectAttr "sharedReferenceNode.sr" "headRN.sr";
connectAttr ":defaultColorMgtGlobals.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr ":defaultTextureList1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr ":defaultShaderList1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Face.pa" ":characterPartition.st" -na;
// End of zHeadController animation.ma
