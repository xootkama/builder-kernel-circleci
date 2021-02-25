#! /bin/bash
branch="20201110/neutrino-6"
BuilderKernel="clang"

. main.sh 'initial' 'full'
export KBUILD_BUILD_VERSION=4

spectrumFile="bego-on-p.rc"
TypeBuild="Stock-LMK"
TypeBuildTag="CFW-TEST"
getInfo ">> Building kernel . . . . <<"
FolderUp="begonia-test"
PostLinkNow="Y"
# ExFolder="Hu"

# CompileKernel
pullLmk
CompileKernel
pullSlmk
CompileKernel

# branch="20201110/neutrino-2"
# ChangeBranch
# TypeBuild="Stock-LMK"
# CompileKernel


# branch="20201110/neutrino-3"
# ChangeBranch
# TypeBuild="Stock-LMK"
# CompileKernel


# branch="20201110/neutrino-4"
# ChangeBranch
# TypeBuild="Stock-LMK"
# CompileKernel


# branch="20201110/neutrino-5"
# ChangeBranch
# TypeBuild="Stock-LMK"
# CompileKernel


# branch="20201110/neutrino-6"
# ChangeBranch
# TypeBuild="Stock-LMK"
# CompileKernel
