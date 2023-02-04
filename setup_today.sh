#!/bin/bash

# 日誌作成
function diary(){
    # diary dir
    pathdt=`date '+%Y/%m/'`
    dir="./diary/${pathdt}"
    if [ ! -d $dir ]; then
		    mkdir -p $dir
    fi
    namedt=`date '+%d'`
    path="${dir}/${namedt}.md"
    touch $path
}
# 進捗日報ディレクトリ作成
function repo(){
    # drepo dir
    pathdt=`date '+%Y/%m/%d/'`
    dir="./drepo/${pathdt}"

    if [ ! -d $dir ]; then
		    mkdir -p $dir
    fi
}
# 進捗logファイル作成
function log(){
    pathdt=`date '+%Y/%m/%d'`
    path="./drepo/${pathdt}/log.md"
    touch $path
}

while getopts drl OPT
do
    case $OPT in
        d) diary ;;
        r) repo ;;
        l) log ;;
        *) echo "該当なし（OPT=$OPT）";;
    esac
done
