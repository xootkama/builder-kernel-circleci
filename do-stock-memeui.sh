#! /bin/bash
branch="q-oss-upstream"
BuilderKernel="clang"
UseOldGcc="YES"

. main.sh 'initial'
export KBUILD_BUILD_VERSION=10

spectrumFile="none"
TypeBuild="BRICK"
TypeBuildTag="MemeKuI"
getInfo ">> Building kernel . . . . <<"
FolderUp="bego-test"

# kDLi='stock-clang'
CompileKernel

# BuilderKernel="dtc"
# changeGcc
# changeClang

# kDLi='stock-dtc'
# CompileKernel

# BuilderKernel="gcc"
# changeGcc
# changeClang

# kDLi='stock-gcc'
# CompileKernel