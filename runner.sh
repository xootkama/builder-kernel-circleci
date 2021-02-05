function update_file() {
    if [ ! -z "$1" ] && [ ! -z "$2" ] && [ ! -z "$3" ];then
        GetValue="$(cat "$3" | grep "$1")"
        GetPath=${3/"./"/"/"}
        [ "$GetValue" != "$2" ] && \
        sed -i "s/$1.*/$2/g" "$3"
        [ ! -z "$(git status | grep "modified" )" ] && \
        git add "$3" && \
        git commit -m "update builder $2"
    fi
}
function update_fileB() {
    if [ ! -z "$1" ] && [ ! -z "$2" ] && [ ! -z "$3" ];then
        GetValue="$(cat "$3" | grep "$1")"
        GetPath=${3/"./"/"/"}
        [ "$GetValue" != "$2" ] && \
        sed -i "s/$1.*/$2"'"'"/g" "$3"
        [ ! -z "$(git status | grep "modified" )" ] && \
        git add "$3" && \
        git commit -m "update builder $2"
    fi
}
function make_changes() {
    git checkout master && git checkout -b $1-$2
    git checkout $1-$2 && update_file 'main.sh' "runner.sh" './.circleci/config.yml'
}
if [ ! -z "$1" ];then
    TAGS="$1"
    TAGS="clang"
    ListBranch=""
    for Files in runner
    do
        if [ "$TAGS" == "all" ];then
            if [[ -e ${Files}.sh ]];then
                for Types in clang dtc gcc
                do
                    git branch -D $Files-$Types
                    make_changes $Files $Types
                    ListBranch="$ListBranch $Files-$Types"
                    git checkout master
                done 
            fi
        else
            if [[ -e ${Files}.sh ]];then
                if [ "$TAGS" == "gcc" ] || [ "$TAGS" == "clang" ] || [ "$TAGS" == "dtc" ];then
                    git branch -D $Files-$TAGS
                    make_changes $Files $TAGS
                    ListBranch="$ListBranch $Files-$TAGS"
                    git checkout master
                fi
            fi
        fi
    done
    if [ ! -z "$1" ];then
        SetRemote="$1"
    else
        SetRemote="origin"
    fi
    git push -f $SetRemote $ListBranch
else
    git clone https://$GIT_SECRET@github.com/$GIT_USERNAME/gdrive_uploader -b master "gdgdgd" --depth=1
    cd gdgdgd
    echo 'test up mamang' > test.txt
    KernelFiles="$(pwd)/test.txt"
    FolderUp="begonia-memeui-Stock"
    doOsdnUp=$FolderUp
    doSFUp=$FolderUp
    chmod +x run.sh
    . config.sh "$FolderUp" "$(date +"%m-%d-%Y")"
    RealZipName="test.txt"
    chmod +x generate-link.sh
    . generate-link.sh
    cd ..
    rm -rf gdgdgd
fi