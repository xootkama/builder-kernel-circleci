#! /bin/bash
branch="20201110/qk-n"
BuilderKernel="clang"

. main.sh 'initial' 'full'
export KBUILD_BUILD_VERSION=2

spectrumFile="bego-on.rc"
TypeBuild="Stock-LMK"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-cfw-qk"
doOsdnUp=$FolderUp
doSFUp=$FolderUp
ExFolder="N"

CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel

BuilderKernel="dtc"
TypeBuild="Stock-LMK"
changeGcc
changeClang

CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel

BuilderKernel="gcc"
TypeBuild="Stock-LMK"
changeGcc
changeClang

CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel

branch="20210205/qk-n"
BuilderKernel="clang"
FolderUp="begonia-memeui-qk"
doOsdnUp=$FolderUp
doSFUp=$FolderUp
ExFolder="N"
ChangeBranch
TypeBuildTag="AOSP-RIPCFW"

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

BuilderKernel="dtc"
TypeBuild="Stock-LMK"
changeGcc
changeClang

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

BuilderKernel="gcc"
TypeBuild="Stock-LMK"
changeGcc
changeClang

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel