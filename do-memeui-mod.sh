#! /bin/bash
branch="q-oss-upstream-mod"
BuilderKernel="clang"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=11

spectrumFile="none"
TypeBuild="oldA10Only"
TypeBuildTag="TestMemeKuI"
getInfo ">> Building kernel . . . . <<"
FolderUp="bego-test"

# kDLi='stock-clang'
CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang

# kDLi='stock-dtc'
CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang

# kDLi='stock-gcc'
CompileKernel