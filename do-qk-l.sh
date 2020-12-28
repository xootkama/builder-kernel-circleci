#! /bin/bash
branch="20201110/qk-l"
BuilderKernel="dtc"

. main.sh 'initial' 'full'
export KBUILD_BUILD_VERSION=1

spectrumFile="bego-on.rc"
TypeBuild="Stock-LMK"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="bego-qk"
ExFolder="L"

CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel