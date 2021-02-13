#! /bin/bash
branch="q-oss-upstream-mod"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=10

spectrumFile="none"
TypeBuild="Stable"
TypeBuildTag="AOSP-RIPCFW"
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