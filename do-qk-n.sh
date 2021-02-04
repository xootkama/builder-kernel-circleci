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