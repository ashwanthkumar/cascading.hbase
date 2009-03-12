#!/bin/bash

# Configurable Parameters
JOB_MAPPERS=1
JOB_REDUCERS=1

# Unique Job Identifier
LOCAL_STAMP=1226944234
#HDFS_STAMP=1226965082
HDFS_STAMP=`date +%s`

START_TIME=`date +%s`

# Constants
BASE_DIR=`pwd`
DATA_DIR=$BASE_DIR/data/$LOCAL_STAMP
LOG_DIR=$BASE_DIR/logs/$HDFS_STAMP
JAR_DIR=$BASE_DIR/build
#JAR_DIR=$BASE_DIR
HADOOP_BIN=/home/hbase/hadoop/bin/hadoop
HDFS_DIR=/backup/$HDFS_STAMP

# Local Setup
mkdir -p $LOG_DIR


$HADOOP_BIN jar $JAR_DIR/cascading-hbase-test.jar cascading/hbase/NewHBaseTester
#   $JOB_MAPPERS
#   $HDFS_DIR/$TABLE/* \
#   $JOB_MAPPERS
#   $JOB_REDUCERS

#echo 'Done'

END_TIME=`date +%s`

declare -i RUN_TIME=$END_TIME-$START_TIME

#echo ImportMR Completed in $RUN_TIME seconds
