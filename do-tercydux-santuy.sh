#! /bin/bash
branch="20201110/Tercydux-Santuy"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=5

spectrumFile="bego-on.rc"
TypeBuild="Stable"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-cfw-Tercydux"
PostLinkNow="Y"
doSFUp=$FolderUp
ExFolder="Santuy"

# CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

# CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

# CompileKernel

branch="20210205/Tercydux-Santuy"
BuilderKernel="clang"
FolderUp="begonia-memeui-Tercydux"
UsePrivateSF="Y"
doSFUp=$FolderUp
ChangeBranch
TypeBuildTag="AOSP-RIPCFW"
changeGcc
changeClang


CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

CompileKernel
