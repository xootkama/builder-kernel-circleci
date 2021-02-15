#! /bin/bash
branch="eleven-upstream"
BuilderKernel="clang"
UseOldGcc="Y"
. main-letoy.sh 'initial'
export KBUILD_BUILD_VERSION=10

spectrumFile="none"
TypeBuild="Stable"
TypeBuildTag="TestTod"
getInfo ">> Building kernel . . . . <<"
FolderUp="keqing-drive"
doSFUp=$FolderUp

# kDLi='stock-memeui-clang'
CompileKernel

# BuilderKernel="dtc"
# changeGcc
# changeClang

# kDLi='stock-memeui-dtc'
# CompileKernel

# BuilderKernel="gcc"
# changeGcc
# changeClang

# kDLi='stock-memeui-gcc'
# CompileKernel