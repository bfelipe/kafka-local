#!/bin/bash

## Accessing the container
docker exec -it kafka-tools-service bash

## Documentation
ex. kafka-topics

## Clear terminal
Ctrl+l

## Creating topic
read -p "Enter the topic name: " TOPIC_NAME
kafka-topics --create --bootstrap-server 127.0.0.1:9092 --replication-factor 1 --partitions 1  --topic my-test-topic

## Fetch topics
kafka-topics --list --bootstrap-server 127.0.0.1:9092

## Describe topic
read -p "Enter the topic name: " TOPIC_NAME
kafka-topics --describe --bootstrap-server 127.0.0.1:9092 --topic my-test-topic

## Delete topic
read -p "Enter the topic name: " TOPIC_NAME
kafka-topics --bootstrap-server 127.0.0.1:9092 --topic $TOPIC_NAME --delete


## Consume topic
read -p "Enter the topic name: " TOPIC_NAME
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic my-test-topic

## List consumer groups refer(https://kafka.apache.org/documentation/#basic_ops_consumer_group)
kafka-consumer-groups --bootstrap-server 127.0.0.1:9092 --list