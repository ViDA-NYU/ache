#!/bin/sh
if [ $# -eq 2 ]
then
    CONFIG_PATH=$1
    MODEL_PATH=$2
else
    #default parameters
    CONFIG_PATH='conf/'
    MODEL_PATH='conf/models/ht'
fi
java -Xmx32g -cp "class/:libs/weka.jar:libs/langdetect.jar:libs/xerces-2.9.1.jar:libs/nekohtml.jar:libs/jsonic-1.2.0.jar:libs/boilerpipe-1.2.0.jar" focusedCrawler.target.TargetStorage $CONFIG_PATH $MODEL_PATH > log/target_storage.log 2>&1 &