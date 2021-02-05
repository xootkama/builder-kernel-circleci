#! /bin/bash
branch="20201110/Tercydux-Hareudang"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=6

spectrumFile="bego-on.rc"
TypeBuild="Stable"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-cfw-Tercydux"
doOsdnUp=$FolderUp
doSFUp=$FolderUp

CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

CompileKernel

branch="20210205/Tercydux-Hareudang"
BuilderKernel="clang"
FolderUp="begonia-memeui-Tercydux"
doOsdnUp=$FolderUp
doSFUp=$FolderUp
ChangeBranch

CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

CompileKernel
