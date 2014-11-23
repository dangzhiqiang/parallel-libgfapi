#!/bin/bash

CURRENT_PATH=`pwd`
export PATH=$PATH:$CURRENT_PATH


#GFAPI_VOLNAME - Gluster volume to use
export GFAPI_VOLNAME=tank

#GFAPI_HOSTNAME - Gluster server participating in the volume
export GFAPI_HOSTNAME=node1

#GFAPI_RECSZ (64 KB) - I/O transfer size (i.e. record size) to use
export GFAPI_RECSZ=64

#GFAPI_FSYNC_AT_CLOSE (0) - if 1, then issue fsync() call on file before closing
export GFAPI_FSYNC_AT_CLOSE=0

# PGFAPI_PROCESSES - how many processes per client (default: 4)
export PGFAPI_PROCESSES=4

# PGFAPI_THREADS_PER_PROC - how many POSIX threads per process (default: 1)
export PGFAPI_THREADS_PER_PROC=1

# PGFAPI_FILES - number of files per thread to use (default 10000)
export PGFAPI_FILES=100

# PGFAPI_FILESIZE - defaults to 4 (KB), number of KB to write or read per file
export PGFAPI_FILESIZE=4

# PGFAPI_DIRECT - defaults to 0, if 1 use O_DIRECT flag at open time
#                 force use of O_DIRECT even for sequential reads/writes
export PGFAPI_DIRECT=0

# PGFAPI_LOAD - what kind of workload - seq-wr, seq-rd, rnd-wr, rnd-rd, unlink, seq-rdwrmix
#               default is seq-wr. "seq" = "sequential", "rnd" = "random", "wr" = "write", "rd" = "read"
export PGFAPI_LOAD=seq-wr

# PGFAPI_FUSE - defaults to 0, if 1 use equivalent POSIX fs calls instead of libgfapi
export PGFAPI_FUSE=1

# if PGFAPI_FUSE=1, then need to set PGFAPI_MOUNTPOINT
export PGFAPI_MOUNTPOINT=/mnt

# PGFAPI_LOGDIR - output log directory, default value is /tmp
export PGFAPI_LOGDIR=$CURRENT_PATH/output


export PGFAPI_PROGRAM=$CURRENT_PATH/gfapi_perf_test
$CURRENT_PATH/parallel_gfapi_test.sh
