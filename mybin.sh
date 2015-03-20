#!/bin/bash

#My Custom shell script
echo "Setting Maven Path"
MAVEN_SETTINGS_PATH=/usr/share/maven/conf/settings.xml

echo "Setting openmrs start alias to 'start_openmrs_start'"
alias start_openmrs_tomcat='/opt/manualInstalls/appservers/tomcat_instances/openmrs/bin/./startup.sh'

echo "Setting openmrs log files alias to openmrs_log_files"
openmrs_log_files=/opt/manualInstalls/appservers/tomcat_instances/openmrs/logs/*.*

alias set_node_js_proxy="npm config set proxy"
alias set_node_js_https_proxy="npm config set https-proxy"
