#! /bin/bash
branch="20201110/Tercydux-Tiris"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=4

spectrumFile="bego-on.rc"
TypeBuild="Stable"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="bego-tercy"

CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

CompileKernel