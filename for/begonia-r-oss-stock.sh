#! /bin/bash
KernelBranch="r-oss-up"

IncludeFiles "${MainPath}/device/begonia-r-oss.sh"
CustomUploader="Y"
# UseSpectrum="Y"
IncludeFiles "${MainPath}/misc/kernel.sh" "https://${GIT_SECRET}@github.com/${GIT_USERNAME}/begonia_kernel"
# spectrumFile="None"
FolderUp="begonia"
TypeBuildTag="[Stable]"

CloneKernel "--depth=1"
# CloneCompiledGccTwelve
CloneZyCFoutTeenLabClang
CompileClangKernelB && CleanOut