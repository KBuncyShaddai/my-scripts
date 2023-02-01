#!/bin/bash

#Usage : source my-setup.sh
#Run in dkube-automation directory

source env/bin/activate

#PYTHONPATH
echo $PYTHONPATH
export PYTHONPATH=$PWD/robot/api
echo $PYTHONPATH

#Oracle setup
#mkdir -p /opt/oracle && wget https://download.oracle.com/otn_software/linux/instantclient/214000/instantclient-basic-linux.x64-21.4.0.0.0dbru.zip -O /opt/oracle/oracle.zip && cd /opt/oracle && unzip oracle.zip && rm oracle.zip

#apt install libaio1
echo $LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/oracle/instantclient_21_4
echo $LD_LIBRARY_PATH

code robot/

cd robot/
history | grep pabot | tail -n3
