#!/bin/bash

#My Custom shell script
echo "Setting Maven Path"
MAVEN_SETTINGS_PATH=/usr/share/maven/conf/settings.xml

HTTP_PROXY=http://127.0.0.1:3128

HTTPS_PROXY=$HTTP_PROXY

echo "Setting openmrs start alias to 'start_openmrs_start'"

alias start_openmrs_tomcat='/opt/manualInstalls/appservers/tomcat_instances/openmrs/bin/./startup.sh'

echo "Setting openmrs log files alias to openmrs_log_files"
openmrs_log_files=/opt/manualInstalls/appservers/tomcat_instances/openmrs/logs/*.*

alias set_node_js_proxy="npm config set proxy"
alias set_node_js_https_proxy="npm config set https-proxy"


echo "setting set proxy alis to export"

alias set_http_proxy="export http_proxy="

alias set_https_proxy="export https_proxy="

alias edit_init="nano ~/mybash/mybin.sh"

lwd=$(pwd)

alias reload_my_init='source ~/mybash/mybin.sh && cd ~/mybash && reset && echo "File change,Please enter commit message" && read gitmessage && git commit -o ~/mybash/mybin.sh -m $gitmessage && cd $lwd'

alias open_proj="subl --project ~/development/sublime_projects/$1"

alias list_subl_projects="ls ~/development/sublime_projects"

alias set_proxy="export http_proxy=http://127.0.0.1:3128 && export https_proxy=http://127.0.0.1:3128"

alias start_openmrs_tomcat="/opt/manualInstalls/appservers/tomcat_instances/openmrs/bin/./startup.sh"

alias stop_openmrs_tomcat="/opt/manualInstalls/appservers/tomcat_instances/openmrs/bin/./shutdown.sh"

alias_start_openmrs_dev="cd ~/development/project/java/openmrs-core/webapp/ && mvn jetty:run"

alias monitor_openmrs_log_tomcat="tail -f /opt/manualInstalls/appservers/tomcat_instances/openmrs/logs/*.*"

alias move_depolyed_openmrs_core="mv ~/development/project/java/openmrs-core/webapp/target/openmrs.war /opt/manualInstalls/appservers/tomcat_instances/openmrs/webapps/"

export CATALINA_OPTS="-Xms1024m -Xmx1024m"

alias who_is_using_port="netstat -plten | grep $1"


alias deploy_openmrs_module_ngcustomui="cd $openmrs_module_ngcustomui_path && mvn package -P deploy-web -D deploy.path='../../../openmrs-core/webapp/src/main/webapp'"

openmrs_module_ngcustomui_path=/home/johnthebeloved/development/project/java/openmrs_modules/ngcustomui/

alias push_init="cd ~/mybash && git push github johnthebeloved && cd $lwd"
