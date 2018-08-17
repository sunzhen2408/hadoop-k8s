#!/bin/bash
#启动ssh服务
service ssh start
#获取容器IP
#sed -i "s/@HDFS_MASTERhadoop-master/$ip/" $HADOOP_HOME/etc/hadoop/core-site.xml
#sed -i "s/hadoop-master/$ip/" $HADOOP_HOME/etc/hadoop/yarn-site.xml
#启动master节点hadoop
#docker exec -it hadoop-master bash
$HADOOP_HOME/sbin/start-dfs.sh &
$HADOOP_HOME/sbin/start-yarn.sh &
tail -f /dev/null

