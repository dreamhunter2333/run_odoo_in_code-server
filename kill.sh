#!/bin/bash
echo "----------killall python3----------"
killall python3
# echo "--------kill coder packages--------"
# ps -ef|grep packages|grep -v grep|cut -c 9-15|sed '1,1d'
# ps -ef|grep packages|grep -v grep|cut -c 9-15|sed '1,1d'|xargs kill -9
echo "------killall ms-python.python------"
num="$(ps -ef | grep "/ms-python.python"|grep -v grep|cut -c 9-15|sed '1,1d')"
echo $num
if [ ${#num} -gt 0 ]
then
ps -ef | grep "/ms-python.python"|grep -v grep|cut -c 9-15|sed '1,1d'|xargs kill -9
fi
echo "----------------end----------------"
