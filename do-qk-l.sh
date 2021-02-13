#! /bin/bash
branch="20210205/qk-l"
BuilderKernel="clang"

. main.sh 'initial' 'full'
export KBUILD_BUILD_VERSION=1

spectrumFile="bego-on.rc"
TypeBuild="Stock-LMK"
TypeBuildTag="AOSP-CFW"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-cfw-qk"
doOsdnUp=$FolderUp
doSFUp=$FolderUp
ExFolder="L"
PostLinkNow="Y"

# CompileKernel
# pullLmk
# CompileKernel
# pullSlmk
# CompileKernel

# BuilderKernel="dtc"
# TypeBuild="Stock-LMK"
# changeGcc
# changeClang

# CompileKernel
# pullLmk
# CompileKernel
# pullSlmk
# CompileKernel

# BuilderKernel="gcc"
# TypeBuild="Stock-LMK"
# changeGcc
# changeClang

# CompileKernel
# pullLmk
# CompileKernel
# pullSlmk
# CompileKernel

branch="20210205/qk-l"
BuilderKernel="clang"
FolderUp="begonia-memeui-qk"
doOsdnUp=$FolderUp
doSFUp=$FolderUp
ExFolder="L"
ChangeBranch
TypeBuildTag="AOSP-RIPCFW"
changeGcc
changeClang
TypeBuild="Stock-LMK"


CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

BuilderKernel="dtc"
TypeBuild="Stock-LMK"
changeGcc
changeClang

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel

BuilderKernel="gcc"
TypeBuild="Stock-LMK"
changeGcc
changeClang

CompileKernel
pullLmkB
CompileKernel
pullSlmkB
CompileKernel