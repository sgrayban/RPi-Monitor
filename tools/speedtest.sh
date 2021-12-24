#!/bin/bash
# file: /root/speedtest.sh

speedtest --simple > /root/speedtest.txt
cat /root/speedtest.txt|sed -n "/ping/Is/.*: \(.*\) .*/\1/p" > /root/ping.txt
cat /root/speedtest.txt|sed -n "/download/Is/.*: \(.*\) .*/\1/p" > /root/download.txt
cat /root/speedtest.txt|sed -n "/upload/Is/.*: \(.*\) .*/\1/p" > /root/upload.txt
