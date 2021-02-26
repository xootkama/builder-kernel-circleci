#! /bin/bash
branch="q-oss-upstream-mod"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=3

spectrumFile="none"
TypeBuild="Stable"
TypeBuildTag="NON-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-memeui-Stock"
doOsdnUp=$FolderUp
doSFUp=$FolderUp

kDLi='stock-memeui-clang'
CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

kDLi='stock-memeui-dtc'
CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

kDLi='stock-memeui-gcc'
CompileKernel