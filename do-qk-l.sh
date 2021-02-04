#! /bin/bash
branch="20201110/qk-l"
BuilderKernel="clang"

. main.sh 'initial' 'full'
export KBUILD_BUILD_VERSION=1

spectrumFile="bego-on.rc"
TypeBuild="Stock-LMK"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-cfw-qk"
doOsdnUp=$FolderUp
doSFUp=$FolderUp
ExFolder="L"

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