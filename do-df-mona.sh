#! /bin/bash
branch="20201110/df-mona"
BuilderKernel="dtc"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=8

spectrumFile="bego-on-p.rc"
TypeBuild="Personal-Stable"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="bego-df"

CompileKernel