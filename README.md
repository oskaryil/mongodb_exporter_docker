# mongodb_exporter_docker
Dockerfile for [mongodb_exporter](https://github.com/percona/mongodb_exporter)

Steps to run docker container from Dockerfile:

* Copy or clone the Dockerfile.

* Run these commands in the same directory as the Dockerfile:

`$ docker build . --tag mongodb_exporter`

`$ docker run -d -p 9216:9216 -e MONGODB_URI="mongodb://<mongodb-uri>:27017" mongodb_exporter`
