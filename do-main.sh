#! /bin/bash
branch="20201110/main"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=9

spectrumFile=""
TypeBuild="MAIN-TEST"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"

CompileKernel