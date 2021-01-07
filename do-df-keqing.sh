#! /bin/bash
branch="20201110/df-keqing"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=7

spectrumFile="bego-on-p.rc"
if [[ "$KVer" == *"-rc"* ]];then
    TypeBuild="Test-Private"
else
    TypeBuild="Stable"
    FolderUp="bego-df"
fi
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"

CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

CompileKernel