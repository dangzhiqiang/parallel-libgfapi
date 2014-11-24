all:
	gcc -pthread -g -O0 -Wall --pedantic -o gfapi_perf_test -I /usr/include/glusterfs/api gfapi_perf_test.c -lgfapi -lrt

clean:
	rm -f  gfapi_perf_test
	rm -rf output
