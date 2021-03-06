alias set_node_js_proxy="npm config set proxy"
alias set_node_js_https_proxy="npm config set https-proxy"

alias what_processid_is="ps ax | grep $1"


echo "setting set proxy alis to export"

alias set_http_proxy="export http_proxy=$1"

alias set_https_proxy="export https_proxy=$1"

alias edit_init="nano ~/mybash/mybin.sh"

alias reload_my_init='lwd=$(pwd) && source ~/mybash/mybin.sh && cd ~/mybash && reset && echo "File change,Please enter commit message" && read gitmessage && git commit -o ~/mybash/mybin.sh -m $gitmessage && cd $lwd'

alias open_proj="subl --project $DEV_PATH/sublime_projects/$1"

alias list_subl_projects="ls $DEV_PATH/sublime_projects"

alias set_proxies="export http_proxy=$HTTPS_PROXY && export https_proxy=$HTTP_PROXY"

alias start_openmrs_tomcat="$MANUAL_INSTALL_PATH/appservers/tomcat_instances/openmrs/bin/./startup.sh"

alias stop_openmrs_tomcat="$MANUAL_INSTALL_PATH/appservers/tomcat_instances/openmrs/bin/./shutdown.sh"

alias start_openmrs_dev="cd $DEV_PATH/project/java/openmrs-core/webapp/ && mvn jetty:run"

alias monitor_openmrs_log_tomcat="tail -f $MANUAL_INSTALL_PATH/appservers/tomcat_instances/openmrs/logs/*.*"

alias move_depolyed_openmrs_core="mv $DEV_PATH/project/java/openmrs-core/webapp/target/openmrs.war $MANUAL_INSTALL_PATH/appservers/tomcat_instances/openmrs/webapps/"




alias who_is_using_port="netstat -plten | grep $1"

alias deploy_openmrs_core="cd $DEV_PATH/project/java/openmrs-core && mvn clean install -DskipTests"

alias add_openmrs_module_ngcustomui="cp $DEV_PATH/project/java/openmrs_modules/ngcustomui/omod/target/ngcustomui-1.0-SNAPSHOT.omod /home/johnthebeloved/.OpenMRS/modules/"

alias deploy_openmrs_module_ngcustomui="cd $openmrs_module_ngcustomui_path && mvn clean install package -P deploy-web -D deploy.path='../../../openmrs-core/webapp/src/main/webapp'"


alias push_init="lwd=$(pwd) && cd ~/mybash && git push github johnthebeloved && cd $lwd"
