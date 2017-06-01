#!/bin/sh
# para
#     $1 compress log file wildcard
#     $2 raw log file retained days
#     $3 backup log file directory
cd /fwy
./clear_log.sh "/home/feel/Online/log/isoatm/201*"       3   /mnt/vdb/log/isoatm         90
./clear_log.sh "/home/feel/Online/log/isoatmnet/201*"    3   /mnt/vdb/log/isoatmnet      90
./clear_log.sh "/home/feel/Online/log/grghost/201*"      3   /mnt/vdb/log/grghost        90
./clear_log.sh "/home/feel/Online/log/alihost/201*"      3   /mnt/vdb/log/alihost        90
./clear_log.sh "/home/feel/Online/log/tenhost/201*"      3   /mnt/vdb/log/tenhost        90
./clear_log.sh "/home/feel/Online/log/clrsrv/201*"       3   /mnt/vdb/log/clrsrv         90
./clear_log.sh "/home/feel/Online/log/logsrv/201*"       3   /mnt/vdb/log/logsrv         90
cd -
