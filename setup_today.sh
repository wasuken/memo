#!/bin/bash

function create(){
	fpath=$1
	dir=`dirname $fpath`
	if [ ! -d $dir ]; then
		mkdir -p $dir
	fi
	if [ ! -f $dir ]; then
		touch $fpath
	fi
}


dt=`date '+%Y/%m/%d'`
# diary
fpath="./diary/${dt}.md"
create $fpath

# drepo
fpath="./drepo/${dt}/log.md"
create $fpath
