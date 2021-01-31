#! /bin/bash
branch="20200907/root-upstream-mod"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=3

spectrumFile="none"
TypeBuild="STOCK"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="bego-stock"

kDLi='stock-clang'
CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

kDLi='stock-dtc'
CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

kDLi='stock-gcc'
CompileKernel