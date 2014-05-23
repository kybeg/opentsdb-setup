#!/bin/bash


# variables

DOWNLOAD_DIR="/download";

INSTALL_DIR="/tsdb";

mkdir $DOWNLOAD_DIR;
mkdir $INSTALL_DIR;

cd $INSTALL_DIR;

myip=$(ifconfig eth0 | grep "inet addr" | cut -f 2 -d ":" | cut -f 1 -d " ")

echo $myip $(hostname) >> /etc/hosts

# enter the correct hostname in /etc/hosts



# update



# Install oracle Java

# sudo add-apt-repository -y ppa:webupd8team/java

# apt-get update

# apt-get install -y oracle-java7-installer binutils gnuplot make



# Install HBASE

wget http://apache.mirrors.hoobly.com/hbase/stable/hbase-0.94.19.tar.gz

tar xzf hbase-0.94.19.tar.gz

# Install Hadoop



# Install OpenTSDB