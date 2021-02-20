#! /bin/bash
branch="20210205/neutrino-a"
BuilderKernel="clang"

. main.sh 'initial' 'full'
export KBUILD_BUILD_VERSION=4

spectrumFile="bego-on-p.rc"
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
