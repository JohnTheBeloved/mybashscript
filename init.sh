export ANDROID_HOME=/Users/john.alade/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/john.alade/Library/Android/sdk
export ODOO_DIR=/Users/john.alade/develop/python/odoo
export PAYARA_DIR=/Users/john.alade/develop/webapps/sormas/2020-09-03/deploy
export M2_HOME=/Users/john.alade/.sdkman/candidates/maven/current
export PG_HOME=/Applications/pgAdmin\ 4.app/Contents/SharedSupport
export PATH="$PATH:/Users/john.alade/develop/flutter/sdk/bin"
export PATH="$PATH:$JAVA_HOME/bin"

alias start_aether='cd /Users/john.alade/develop/phyton/aether/aether-bootstrap && docker-compose -d up && docker-compose -f docker-compose-connect.yml -d up'
alias stop_aether='cd /Users/john.alade/develop/phyton/aether/aether-bootstrap && docker-compose stop && docker-compose -f docker-compose-connect.yml stop'


alias start_rapidpro='cd /Users/john.alade/develop/phyton/rapidpro && sudo ifconfig lo0 alias 192.168.10.10 && docker-compose up -d postgresql && docker-compose up -d redis && docker-compose up rapidpro'
alias stop_rapidpro='cd /Users/john.alade/develop/phyton/rapidpro && docker-compose stop postgresql && docker-compose stop redis && docker-compose stop rapidpro'


alias start_nginx='sudo nginx'
alias stop_nginx='sudo nginx -s stop'

alias start_lmis='cd /Users/john.alade/develop/node/angularJS/lmis/dashboard && grunt serve'

alias who_is_using='sudo lsof -i '

alias adb_open='adb tcpip '
alias adb_connect='adb connect'

alias where_is='sudo find / -name '

alias start_tomcat="cd /Users/john.alade/develop/servers/tomcat/apache-tomcat-8.5.39/bin && ./startup.sh"
alias log_tomcat="cd /Users/john.alade/develop/servers/tomcat/apache-tomcat-8.5.39/logs && tail -f catalina.out"
alias stop_tomcat="cd /Users/john.alade/develop/servers/tomcat/apache-tomcat-8.5.39/bin && ./shutdown.sh"

alias create_v3_file="echo \"authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names
 
[alt_names]
DNS.1 = localcert
\"  >> v3.ext"

alias convert_server_jks="cd /Users/john.alade/develop/certs  && openssl pkcs12 -export -in server.crt -inkey server.key -out server.p12 && keytool -importkeystore -srckeystore server.p12 -srcstoretype PKCS12 -destkeystore server.jks  -deststoretype JKS"

alias generate_local_cert="mkdir -p /Users/john.alade/develop/certs && cd /Users/john.alade/develop/certs  && create_v3_file &&   openssl genrsa -des3 -passout pass:x -out server.pass.key 2048 && openssl rsa -passin pass:x -in server.pass.key -out server.key && rm server.pass.key && openssl req -new -key server.key -out server.csr && openssl x509 -req -sha256 -extfile v3.ext -days 1825 -in server.csr -signkey server.key -out server.crt"

alias start_odoo="cd $ODOO_DIR && ./odoo-bin"
alias start_odoo_with_update="cd $ODOO_DIR && ./odoo-bin --addons-path addons,addons_third_party,addons_mine -u "

alias start_ckan_env=". /usr/local/lib/ckan/default/bin/activate"

alias stop_ckan_env="deactivate"

alias run_ckan="paster serve /etc/ckan/default/development.ini"

alias start_solr="brew services start solr"

alias stop_solr="brew services stop solr"

alias start_redis_server_with_conf="redis-server "

alias start_redis_server="brew services start redis"

alias stop_redis_server="brew services stop redis"

alias restart_redis_server="brew services restart redis"

alias switch_node_12="nvm use v12.14.1"

alias switch_node_10="nvm use v10.18.1"

alias switch_python_2="pyenv global 2.7.17"

alias switch_python_3="pyenv global 3.8.0"

alias start_map_composer="cd /Users/john.alade/develop/node/map-composer && source .env && nvm use v10.18.1 && yarn run env-cmd yarn start-dev
"

alias start_payara="cd $PAYARA_DIR && sudo bash ./start-payara-sormas.sh && tail -f /usr/local/opt/domains/sormas/logs/server.log"
alias stop_payara="cd $PAYARA_DIR && sudo bash ./stop-payara-sormas.sh && tail -f /usr/local/opt/domains/sormas/logs/server.log"

alias list_fix_this_folder="node_modules/eslint/bin/eslint.js --fix '{src,tests}/**/*.{js,jsx,ts,tsx}' && tsc -p tsconfig.test.json"

alias list_this_folder="node_modules/eslint/bin/eslint.js --fix '{src,tests}/**/*.{js,jsx,ts,tsx}' && tsc -p tsconfig.test.json"

alias start_mongo_44="mongod --config /usr/local/etc/mongod.conf"
alias auto_start_mongo_44="brew services start mongodb-community@4.4"
alias auto_stop_mongo_44="brew services stop mongodb-community@4.4"
alias edit_mongo_44="nano /usr/local/etc/mongod.conf"
alias start_mongo_44_bg="mongod --config /usr/local/etc/mongod.conf --fork"

alias clean_node_yarn="rm -Rf yarn.lock */*/yarn.lock node_modules/ */*/node_modules/ */*/build/"
alias install_node_yarn="yarn install --no-lockfile --production=false --silent"
alias setup_openssl='export PATH="/usr/local/opt/openssl@1.1/bin:$PATH" && export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib" && export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include" && export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"'
alias setup_readline='  export LDFLAGS="-L/usr/local/opt/readline/lib" && export CPPFLAGS="-I/usr/local/opt/readline/include"'

alias start_mysql="mysql.server start"
alias stop_mysql="mysql.server stop"
alias restart_mysql="mysql.server restart"

alias set_postgres='export PATH="/Applications/pgAdmin\ 4.app/Contents/SharedSupport:$PATH"'

alias telnet='nc -vz '

# Other modules
source /Users/john.alade/scripts/octosoft.sh
source /Users/john.alade/scripts/docker.sh
source /Users/john.alade/scripts/node.sh


alias run_react_app='react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res'
alias build_react_app_apk='react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res && rm -rf ./android/app/src/main/res/raw && rm -rf ./android/app/src/main/res/res* && rm -rf ./android/app/src/main/res/drawable-* && cd android && ./gradlew clean &&  ./gradlew assembleRelease'
