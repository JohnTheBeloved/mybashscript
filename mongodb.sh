


#1 create a folder called mongodb
#mkdir /path/to/mongo/db/folder/for/healthstack

#2. unzip the healthstack dataase dump sent to you
# ls /path/to/unziped/mongodb/dump/sent/to/you


#3. Set your environment variables
export MONGO_CONTAINER=local-mongodb-server
export MONGO_USERNAME=mongoadmin
export MONGO_PASSWORD=changeme
export MONGO_DB_FOLDER=/path/to/mongo/db/folder/for/healthstack
export MONGODB='mongodb://mongoadmin:changeme@local-mongodb-server:27017/healthstack-dev?retryWrites=true&w=majority&authSource=admin'

export MONGO_CONTAINER=local-mongodb-server
export MONGO_USERNAME=mongoadmin
export MONGO_PASSWORD=changeme
export MONGO_DB_FOLDER=/Users/john.alade/develop/healthstack/docker/mongodb
export MONGODB='mongodb://mongoadmin:changeme@172.19.0.2:27017/healthstack-dev?retryWrites=true&w=majority&authenticationDatabase=admin'

# Ignnore this after restoring database dump
export MONGO_DB_DUMP_FOLDER=/path/to/unziped/mongodb/dump/sent/to/you

#3 First Run mondodb Server
docker run --name  ${MONGO_CONTAINER} \
    -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME=${MONGO_USERNAME} \
    -e MONGO_INITDB_ROOT_PASSWORD=${MONGO_PASSWORD} \
    -v ${MONGO_DB_DUMP_FOLDER}:/data/healthstack_dump \
    -v ${MONGO_DB_FOLDER}:/data/db \
    --network healthstack \
    --hostname healthstack_db \
    mongo


#4 Restore healthstack database dump
sudo docker exec ${MONGO_CONTAINER} sh -c 'exec mongorestore -u mongoadmin -p changeme --authenticationDatabase admin --db healthstack-dev  /data/healthstack_dump'

# 5. Backup healthstack database
docker exec ${MONGO_CONTAINER} sh -c 'exec mongodump -d <database_name> --archive' > /some/path/on/your/host/all-collections.archive

export MONGODB='mongodb+srv://h3a1thstack-dev:yi3fn7ZlGKbY6sXp@cluster0.dfjm1.mongodb.net/healthstack-dev?retryWrites=true&w=majority'
export MONGODB='mongodb+srv://mongoadmin:changeme@healthstack_db:27017/healthstack-dev?retryWrites=true&w=majority'
docker run -e REACT_APP_SEVER_URL=http://localhost:8080 -e MONGODB=${MONGODB} -p 80:80 -p 8080:8080 healthstack:0.0.1 --hostname healthstack_app 

#6  Subsequnennt runs
docker run --name  ${MONGO_CONTAINER} \
    -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME=${MONGO_USERNAME} \
    -e MONGO_INITDB_ROOT_PASSWORD=${MONGO_PASSWORD} \
    -v ${MONGO_DB_FOLDER}:/data/db \
    --network healthstack \
    --hostname healthstack_db \
    mongo



#Stop and delete cotainer
docker stop ${MONGO_CONTAINER}
docker rm ${MONGO_CONTAINER}



#Sample
export MONGO_CONTAINER=local-mongodb-server
export MONGO_USERNAME=mongoadmin
export MONGO_PASSWORD=changeme
export MONGO_DB_FOLDER=/Users/john.alade/develop/healthstack/docker/mongodb

docker run --name  ${MONGO_CONTAINER} \
    -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME=${MONGO_USERNAME} \
    -e MONGO_INITDB_ROOT_PASSWORD=${MONGO_PASSWORD} \
    -v ${MONGO_DB_DUMP_FOLDER}:/data/healthstack_dump \
    -v ${MONGO_DB_FOLDER}:/data/db \
    --hostname healthstack_db \
    mongo

 export MONGO_DB_DUMP_FOLDER=/Users/john.alade/develop/healthstack/mongo_dump/dump/healthstack-dev

docker run -e REACT_APP_SEVER_URL=http://localhost:8080 -e MONGODB=${MONGODB} -p 80:80 -p 8080:8080 healthstack:0.0.1 --network=healthstack --hostname healthstack_app 


#Dr   Sylvest


sudo docker  rm  healthstack-app
sudo docker  rm  local-mongodb-server
#export vars

export MONGO_CONTAINER=local-mongodb-server
export MONGO_USERNAME=mongoadmin
export MONGO_PASSWORD=changeme
export MONGO_DB_FOLDER=/var/lib/MongoHS/db
export MONGO_DB_DUMP_FOLDER=/var/lib/MongoHS/restored/healthstack-dev
export MONGODB='mongodb://mongoadmin:changeme@host.docker.internal:27017/healthstack-dev?retryWrites=true&w=majority&authSource=admin'

#Run 
sudo docker run -d --name  ${MONGO_CONTAINER} \
    -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME=${MONGO_USERNAME} \
    -e MONGO_INITDB_ROOT_PASSWORD=${MONGO_PASSWORD} \
    -v ${MONGO_DB_DUMP_FOLDER}:/data/healthstack_dump \
    -v ${MONGO_DB_FOLDER}:/data/db \
    --network host \
    --hostname healthstack_db \
    mongo

#Run  backend
sudo docker  run  --name=healthstack-app  -d -e REACT_APP_SEVER_URL=http://localhost:8080 -e MONGODB=${MONGODB} -p 80:80 -p 8080:8080 healthstack:0.0.1 --network=host --hostname healthstack_app 



sudo docker logs healthstack-app --follow

sudo docker logs local-mongodb-server --follow
