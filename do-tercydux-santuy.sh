#! /bin/bash
branch="20201110/Tercydux-Santuy"
BuilderKernel="dtc"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=5

spectrumFile="bego-on.rc"
TypeBuild="Stable"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="bego-tercy"

CompileKernel