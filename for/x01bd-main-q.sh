#! /bin/bash
KernelBranch="20210304/q/main"

IncludeFiles "${MainPath}/device/RMX1851.sh"
CustomUploader="Y"
FolderUp="keqing-drive"
TypeBuildTag="[Q]"

CloneKernel "--depth=1"
CloneGCCOld
CloneGugelClang
CompileClangKernel

