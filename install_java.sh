#! /bin/sh

apt-get update -y && apt-get upgrade -y 
apt-get install vim -y

apt-get install default-jdk -y

 cat << EOF >> /etc/environment
JAVA_HOME=`readlink -f $(which java)`
EOF
source "/etc/environment"
echo $JAVA_HOME

