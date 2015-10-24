#!/bin/bash

#My Custom shell script

echo "Setting Maven Path"

MANUAL_INSTALL_PATH=/opt/manualInstalls

JAVA_HOME=$MANUAL_INSTALL_PATH/java/jdk1.7.0_75

DEV_PATH=~/develop

MAVEN_SETTINGS_PATH=/usr/share/maven/conf/settings.xml

HTTP_PROXY=http://127.0.0.1:3128

HTTPS_PROXY=$HTTP_PROXY
 
openmrs_log_files=$MANUAL_INSTALL_PATH/appservers/tomcat_instances/openmrs/logs/*.*

#Set npm packages download dir 

NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
nvm use v0.12.4

[ ! -d $NPM_PACKAGES  ] && mkdir $NPM_PACKAGES



#Load my export variables
source exports.sh

#Load my work init
source apps.sh


#Load bin aliases
source aliases.sh


