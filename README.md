parallel-libgfapi
=================

benchmark for distributed, multi-thread test of Gluster libgfapi performance

This page describes a new benchmark for measuring small-file performance with libgfapi.  As libgfapi is increasingly used for Gluster applications, questions have arisen about metadata-intensive workload performance with libgfapi and how this scales with bricks, libgfapi instances, etc.   This benchmark takes advantage of the similarity between libgfapi and POSIX interfaces so that the same tests can be run either with libgfapi or in a POSIX filesystem (example: Gluster FUSE mountpoint).  This makes it easy to compare libgfapi performance with FUSE or XFS performance, for example.

Please pull and view default.html for more detailed instructions.


How to use:
1. do make
2. add clients hostname to default file clients.list, and add servers hostname to defalut file servers.list
3. configure start_test.sh
4. add ssh login without password for all hosts, must to configure localhost 
5. do ./start_test.sh to test

