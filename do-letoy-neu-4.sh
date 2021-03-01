#! /bin/bash
branch="20210228/neutrino-4"
BuilderKernel="dtc"
# UseOldGcc="Y"
. main-letoy.sh 'initial' 'full'
# export KBUILD_BUILD_VERSION=1

spectrumFile="none"
TypeBuild="Stock-LMK"
TypeBuildTag="Stable"
getInfo ">> Building kernel . . . . <<"
FolderUp="letoy-neutrino"
doSFUp=$FolderUp
PostLinkNow="Y"

# kDLi='stock-memeui-clang'
CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel