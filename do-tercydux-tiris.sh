#! /bin/bash
branch="20210205/neutrino-a"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=4

spectrumFile="bego-on.rc"
TypeBuild="Stable"
TypeBuildTag="NON-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="keqing-drive"
# PostLinkNow="Y"
# ExFolder="Hu"

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel
