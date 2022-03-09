# Kafka Infrastructure

This is simpe bootstrap to run kafka locally and manage your development topics

---

### Installing and running Kafka

We are gonna run kafka locally using docker.
Docker allows us to isolate some middleware components and run worloads and services into our host infrastructure without pollute our current OS with unnecessary binaries and files.

First things first, you should have docker installed. If you not, don't worry, there are a script that will handle that work for you.
For that you just need to run as the described bellow in your terminal:

    ./docker-install.sh

After that you can safely run kafka isolated with Docker.
To achieve this, you can use another script left.

    ./kafka-bootstrap.sh

You can now look if the container is up and running by running:

    docker container ls -a | grep kafka-service

and to see what is going on in the logs of the container:

    docker container logs kafka-service

Now you have kafka running locally. 
It's important to mention that we are using a version made by Spotify of the kafka for docker environments.
This version already have zookeeper proper configured for you, so many of it binding configurations with kafka it not required here.

---

### Managing topics

We already have kafka up and running, now we should manage our topics so we can start our e