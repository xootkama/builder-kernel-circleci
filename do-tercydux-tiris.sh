#! /bin/bash
branch="20210205/neutrino-1"
BuilderKernel="clang"

. main.sh 'initial' 'full'
export KBUILD_BUILD_VERSION=5

spectrumFile="bego-on-p.rc"
TypeBuild="Stock-LMK"
TypeBuildTag="NON-CFW-TEST"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-memeui-neutrino"
doOsdnUp=$FolderUp
PostLinkNow="Y"
ExFolder="LX"

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang
ChangeBranch

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang
ChangeBranch

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

branch="20201110/neutrino-1"
TypeBuild="Stock-LMK"
TypeBuildTag="AOSP-CFW"
FolderUp="begonia-cfw-neutrino"
doOsdnUp=$FolderUp
ChangeBranch

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

BuilderKernel="dtc"
changeGcc
changeClang
ChangeBranch

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

BuilderKernel="gcc"
changeGcc
changeClang
ChangeBranch

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel
