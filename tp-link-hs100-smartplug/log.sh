#!/bin/sh
./monitor.sh $1 | perl -e ' select STDOUT; $| = 1; while (<>) { if(/"current":([\.\d]++),"voltage":(\d+)/) { $x++; print "$x\t$1\t$2\n" }}'> data.out

