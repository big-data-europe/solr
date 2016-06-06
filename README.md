# Solr

Docker image containing a standard Solr distribution.

Versions used in this docker image:
* Solr Version: 6.0.1
* Java 1.8.0_72

Image details:
* Installation directory: /usr/local/apache-solr/current

## Using with docker-compose

The minimal configuration includes an instance of zookeeper with 1
```
version: '2'
services:
  solr:
    image: earthquakesan/solr:1.0.0-solr6.0.1
    hostname: solr
    environment:
      - ZOOKEEPER_HOST=zookeeper:2181
    networks:
      - solr
    ports:
      - "8983:8983"
  zookeeper:
    image: mesoscloud/zookeeper:3.4.8-centos-7
    hostname: zookeeper
    networks:
      - solr
    environment:
      - MYID=1

networks:
  solr:
```
