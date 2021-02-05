#! /bin/bash
branch="20201110/df-mona"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=8

spectrumFile="bego-on-p.rc"
TypeBuild="Stable"
FolderUp="begonia-cfw-df"
doOsdnUp=$FolderUp
doSFUp=$FolderUp

TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"

CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

CompileKernel

branch="20210205/df-mona"
BuilderKernel="clang"
FolderUp="begonia-memeui-df"
doOsdnUp=$FolderUp
doSFUp=$FolderUp
ChangeBranch
TypeBuildTag="AOSP-RIPCFW"

CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

CompileKernel
