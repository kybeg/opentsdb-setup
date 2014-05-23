#!/bin/bash


# variables

DOWNLOAD_DIR="/download";
INSTALL_DIR="/tsdb";

mkdir $DOWNLOAD_DIR;
mkdir $INSTALL_DIR;
mkdir "$INSTALL_DIR/zookeeper"
mkdir "$INSTALL_DIR/hbase"
cd $INSTALL_DIR;

myip=$(ifconfig eth0 | grep "inet addr" | cut -f 2 -d ":" | cut -f 1 -d " ")


HBASE_SITE="<?xml version='1.0'?>
<?xml-stylesheet type='text/xsl' href='configuration.xsl'?>
<configuration>
  <property>
    <name>hbase.rootdir</name>
    <value>file://$INSTALL_DIR/hbase</value>
  </property>
  <property>
    <name>hbase.zookeeper.property.dataDir</name>
    <value>$INSTALL_DIR/zookeeper</value>
  </property>
</configuration>";

# enter the correct hostname in /etc/hosts
echo $myip $(hostname) >> /etc/hosts

# Install oracle Java

# sudo add-apt-repository -y ppa:webupd8team/java

# apt-get update

# apt-get install -y oracle-java7-installer binutils gnuplot make


######################
# Install HBASE
######################

hbase="hbase-0.94.19"; 

wget http://apache.mirrors.hoobly.com/hbase/stable/${hbase}.tar.gz

tar xzf $hbase.tar.gz

echo $HBASE_SITE > $INSTALL_DIR/$hbase/conf/hbase-site.xml


# Install OpenTSDB