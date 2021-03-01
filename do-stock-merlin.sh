#! /bin/bash
branch="eleven-upstream-mod"
BuilderKernel="clang"
# UseOldGcc="Y"
. main-merlin.sh 'initial' 'full'
# export KBUILD_BUILD_VERSION=1

spectrumFile="none"
TypeBuild="Stable"
TypeBuildTag="STOCK"
getInfo ">> Building kernel . . . . <<"
FolderUp="merlin-stock"
doSFUp=$FolderUp
doOsdnUp=$FolderUp
PostLinkNow="Y"

# kDLi='stock-memeui-clang'
pullVdsoStock
CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

# kDLi='stock-memeui-dtc'
pullVdsoStock
CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

# kDLi='stock-memeui-gcc'
pullVdsoStock
CompileKernel