#! /bin/bash
branch="20201110/df-keqing"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=7

spectrumFile="bego-on-p.rc"
TypeBuild="Personal-Stable"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="bego-df"

CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

CompileKernel