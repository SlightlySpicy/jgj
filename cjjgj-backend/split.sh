#!/bin/sh

date=`date -d "yesterday" +%Y_%m_%d`

dirname="/usr/local/cjjgj"

cp -a $dirname/nohup.out $dirname/logout/${date}.out

cat /dev/null > $dirname/nohup.out

