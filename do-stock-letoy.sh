#! /bin/bash
branch="eleven-upstream-mod"
BuilderKernel="clang"
# UseOldGcc="Y"
. main-letoy.sh 'initial' 
export KBUILD_BUILD_VERSION=1

spectrumFile="none"
TypeBuild="Stable"
TypeBuildTag="TestTod"
getInfo ">> Building kernel . . . . <<"
FolderUp="letoy-stock"
doSFUp=$FolderUp
doOsdnUp=$FolderUp
PostLinkNow="Y"

# kDLi='stock-memeui-clang'
CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

# kDLi='stock-memeui-dtc'
CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

# kDLi='stock-memeui-gcc'
CompileKernel