#!/bin/sh
# para
#     $1 compress log file wildcard
#     $2 raw log file retained days
#     $3 backup log file directory

raw_file_wild=$1
raw_retain_days=$2
backup_dir=$3
history_file_wild=${backup_dir}/`basename "${raw_file_wild}"`
history_retain_days=$4


function compress_raw_file(){
    echo dirname `dirname "${raw_file_wild}"`

    find `dirname "${raw_file_wild}"` -maxdepth 1 -name "`basename "${raw_file_wild}"`" -mtime +"${raw_retain_days}" -exec ./compress_move.sh {} ${raw_retain_days} ${backup_dir} \;
}

function clear_history_file(){
    echo history_file_wild "${history_file_wild}"
    find `dirname "${history_file_wild}"` -maxdepth 1 -name "`basename "${history_file_wild}"`"  -mtime +"${history_retain_days}" -exec rm -fr {} \;
}

compress_raw_file

clear_history_file
