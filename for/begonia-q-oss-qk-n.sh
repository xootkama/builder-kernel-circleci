#! /bin/bash
KernelBranch="20210205/qk-n"

IncludeFiles "${MainPath}/device/begonia-q-oss.sh"
CustomUploader="Y"
UseSpectrum="Y"
IncludeFiles "${MainPath}/misc/kernel.sh" "https://${GIT_SECRET}@github.com/${GIT_USERNAME}/begonia_kernel"
FolderUp="begonia-memeui-qk"
ExFolder="N"
TypeBuildTag="[Q-OSS][Stock-LMK]"

# misc
spectrumFile="bego-on.rc"
doOsdnUp=$FolderUp
doSFUp=$FolderUp
 

CloneKernel
CloneCompiledGccEleven && CloneProtonClang
CompileClangKernel && pullALmk
CompileClangKernel && pullSlmk
CompileClangKernel && CleanOut