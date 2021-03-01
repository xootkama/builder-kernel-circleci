#! /bin/bash
branch="20210228/neutrino-1"
BuilderKernel="dtc"
# UseOldGcc="Y"
. main-merlin.sh 'initial' 'full'
# export KBUILD_BUILD_VERSION=1

spectrumFile="none"
TypeBuild="Stock-LMK"
TypeBuildTag="Stable"
getInfo ">> Building kernel . . . . <<"
FolderUp="merlin-neutrino"
doSFUp=$FolderUp
PostLinkNow="Y"

# kDLi='stock-memeui-clang'
CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel