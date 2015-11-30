#!/bin/bash

#Work scripts

alias start_smartinsure_retailclient="node $DEV_PATH/project/nodejs/smartinsureRetailClient/index.js"

alias start_smartinsure_tomcat="$MANUAL_INSTALL_PATH/appServers/tomcat/smartinsure/bin/./startup.sh"

alias stop_smartinsure_tomcat="$MANUAL_INSTALL_PATH/appServers/tomcat/smartinsure/bin/./shutdown.sh"

alias monitor_smartinsure_tomcat="tail -f $MANUAL_INSTALL_PATH/appServers/tomcat/smartinsure/logs/*.*"

alias edit_apps_init="nano ~/mybashscript/apps.sh"

alias deploy_smartinsure_tomcat="mv ~/develop/projects/java/smartinsure/smartinsure-rest/target/smartinsure-rest-1.0-SNAPSHOT.war $MANUAL_INSTALL_PATH/appServers/tomcat/smartinsure/webapps/smartinsure.war"
