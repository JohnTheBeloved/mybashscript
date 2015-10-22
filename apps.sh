#!/bin/bash

#Work scripts

alias start_smartinsure_retailclient="node $DEV_PATH/project/nodejs/smartinsureRetailClient/index.js"

alias start_smartinsure_tomcat="$MANUAL_INSTALL_PATH/appservers/tomcat_instances/smartinsure/bin/./startup.sh"

alias stop_smartinsure_tomcat="$MANUAL_INSTALL_PATH/appservers/tomcat_instances/smartinsure/bin/./shutdown.sh"

alias monitor_smartinsure_tomcat="tail -f $MANUAL_INSTALL_PATH/appservers/tomcat_instances/smartinsure/logs/*.*"

alias edit_apps_init="nano ~/mybash/apps.sh"
