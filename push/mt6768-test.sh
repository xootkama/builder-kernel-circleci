#! /bin/bash
git checkout master

if [ ! -z "$2" ];then
    ListBranch="$2"
else
    ListBranch="merlin-q-oss-neutrino-3-test lancelot-q-oss-neutrino-3-test"
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
    repo="zero"
fi
git push -f "$repo" $ListBranch

git checkout master

git branch -D $ListBranch