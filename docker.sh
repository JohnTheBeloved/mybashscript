function docker_bash() {
 docker exec -it $1 bash
}


alias start_mongo= "docker run -d --network docker-network --name mongo-docker \
    -p 27017:27018 \
    -e MONGO_INITDB_ROOT_USERNAME=mongoadmin \
    -e MONGO_INITDB_ROOT_PASSWORD=changeme \
    -v /Users/john.alade/develop/healthstack/docker/mongodb:/data/db \
    mongo"
# Dump mongo db docker exec some-mongo sh -c 'exec mongodump -d <database_name> --archive' > /some/path/on/your/host/all-collections.archive
