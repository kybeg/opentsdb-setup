#!/bin/bash


# variables

myip=$(ifconfig eth0 | grep "inet addr" | cut -f 2 -d ":" | cut -f 1 -d " ")

echo $myip $(hostname) >> /etc/hosts

# enter the correct hostname in /etc/hosts



# update



# Install oracle Java

# sudo add-apt-repository -y ppa:webupd8team/java

# apt-get update

# apt-get install -y oracle-java7-installer binutils gnuplot make



# Install HBASE



# Install Hadoop



# Install OpenTSDB