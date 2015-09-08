#!/bin/bash
#write java path

echo "ADD file"
echo "" >>/etc/profile
echo 'JAVA_HOME=/usr/java/jdk1.6.0_20' >>/etc/profile
echo 'JRE_HOME=$JAVA_HOME/jre' >>/etc/profile
echo 'PATH=$JAVA_HOME/bin:JRE_HOME/bin:$PATH' >>/etc/profile
echo 'CLASSPATH=.:$JAVA_HOME/lib/jt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib' >>/etc/profile
echo 'export JAVA_HOME JRE_HOME PATH CLASSPATH' >>/etc/profile

. /etc/profile
java -version

