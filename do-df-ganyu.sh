#! /bin/bash
branch="20210205/neutrino-6"
BuilderKernel="clang"

. main.sh 'initial' 'full'
export KBUILD_BUILD_VERSION=10

spectrumFile="bego-on-p.rc"
TypeBuild="Stock-LMK"
TypeBuildTag="NON-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-memeui-neutrino"
doSFUp=$FolderUp
PostLinkNow="Y"
ExFolder="HZ"

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

BuilderKernel="dtc"
TypeBuild="Stock-LMK"
changeGcc
changeClang
ChangeBranch

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

BuilderKernel="gcc"
TypeBuild="Stock-LMK"
changeGcc
changeClang
ChangeBranch

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

branch="20201110/neutrino-6"
TypeBuild="Stock-LMK"
TypeBuildTag="AOSP-CFW"
FolderUp="begonia-cfw-neutrino"
doSFUp=$FolderUp
ChangeBranch

CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel

BuilderKernel="dtc"
TypeBuild="Stock-LMK"
changeGcc
changeClang
ChangeBranch

CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel

BuilderKernel="gcc"
TypeBuild="Stock-LMK"
changeGcc
changeClang
ChangeBranch

CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel
