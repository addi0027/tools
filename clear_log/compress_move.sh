#!/bin/sh

raw_file=$1
raw_retain_days=$2
backup_dir=$3
compress_file=${backup_dir}/`basename "${raw_file}"`.tar.gz

function compress_move() {
    mkdir -p ${backup_dir}
    tar -Pcvzf "${compress_file}" "${raw_file}"
    if [ 0 -eq $? ]
    then
        rm -fr "${raw_file}"
        echo compress_move "${raw_file}" success
    else
        echo compress_move "${raw_file}" failed
    fi
}

compress_move
