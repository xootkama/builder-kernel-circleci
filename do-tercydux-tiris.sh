#! /bin/bash
branch="20210205/neutrino-1"
BuilderKernel="clang"

. main.sh 'initial' 'full'
export KBUILD_BUILD_VERSION=4

spectrumFile="bego-on-p.rc"
TypeBuild="Stock-LMK"
TypeBuildTag="NON-CFW-TEST"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-test"
PostLinkNow="Y"
# ExFolder="Hu"

CompileKernel
# pullLmkB
# CompileKernel
# pullSlmkB
# CompileKernel

branch="20210205/neutrino-2"
ChangeBranch
TypeBuild="Stock-LMK"
CompileKernel


branch="20210205/neutrino-3"
ChangeBranch
TypeBuild="Stock-LMK"
CompileKernel


branch="20210205/neutrino-4"
ChangeBranch
TypeBuild="Stock-LMK"
CompileKernel


branch="20210205/neutrino-5"
ChangeBranch
TypeBuild="Stock-LMK"
CompileKernel


branch="20210205/neutrino-6"
ChangeBranch
TypeBuild="Stock-LMK"
CompileKernel
