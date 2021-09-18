#! /bin/bash
git checkout master

if [ ! -z "$2" ];then
    ListBranch="$2"
else
    ListBranch="begonia-cfw-qk-l begonia-cfw-qk-n begonia-cfw-qk-l-gcc begonia-cfw-qk-n-gcc begonia-cfw-qk-l-dtc begonia-cfw-qk-n-dtc"
fi

for Branch in $ListBranch
do
    git checkout master 
    git branch -D $Branch 
    git checkout -b $Branch 
    git commit --amend -s -m "up for '$Branch'"
done

if [ ! -z "$1" ];then
    repo="$1"
else
    repo="neet"
fi
git push -f "$repo" $ListBranch

git checkout master