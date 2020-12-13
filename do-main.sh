#! /bin/bash
branch="20201110/main"
BuilderKernel="00000"
if [ "$BuilderKernel" != "clang" ] && [ "$BuilderKernel" != "dtc" ] && [ "$BuilderKernel" != "gcc" ] ;then
    exit;
fi

. main.sh 'initial' 'full'
export KBUILD_BUILD_VERSION=9

spectrumFile=""
TypeBuild="MAIN-TEST"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp=""

CompileKernel