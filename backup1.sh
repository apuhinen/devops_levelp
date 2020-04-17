#!/bin/bash

cd /home/ubuntu/backup

CURRENTDATE=`date +"%Y%m%d-%H%M%S"`

cp /home/ubuntu/config1 config1_$CURRENTDATE
cp /home/ubuntu/config2 config2_$CURRENTDATE

rm -rf $(ls -1t |grep config1 |  tail -n +4)
rm -rf $(ls -1t |grep config2 |  tail -n +4)