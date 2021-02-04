#! /bin/bash
branch="q-oss-upstream"
BuilderKernel="clang"
UseOldGcc="YES"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=10

spectrumFile="none"
TypeBuild="Stable"
TypeBuildTag="AOSP-RIPCFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-memeui-Stock"
doOsdnUp=$FolderUp
doSFUp=$FolderUp

# kDLi='stock-clang'
CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

# kDLi='stock-dtc'
CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

# kDLi='stock-gcc'
CompileKernel