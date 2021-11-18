# How To

## Prerequisites
* Linux/Unix-like OS  (x86 architecture)
* [Docker](https://docs.docker.com/engine/install/ubuntu/)
* [docker-compose](https://docs.docker.com/compose/) or just enable _**Docker Compose v2**_
* [jq](https://stedolan.github.io/jq/download/) for pretty formatting of JSON
* Fork this Github repository

## Deployment
* Build Docker images using `docker-compose`
```shell
docker-compose build
```

* Deploy services in detached mode (background) 
```shell
docker-compose up -d
```
* To check the progress of deployment, please use the following:
```shell
docker-compose ps
```


## Kafka Connect
* Validate status of deployed connectors by running the following command:
```shell
curl -XGET "http://localhost:8083/connectors?expand=status" | jq
```

## Stopping 
* To stop services use `down` command
```shell
docker-compose down
```
