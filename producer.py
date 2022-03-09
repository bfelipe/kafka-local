from distutils.command.config import config
import json

from kafka import KafkaProducer

import kafka_vars

config = {
    'bootstrap_servers':  kafka_vars.BOOTSTRAP_SERVERS,
    'client_id': 'producer-py'
}

producer = KafkaProducer()

payload = {'message': 'broadcast payload'}

producer.send(kafka_vars.TOPIC, json.dumps(payload).encode('utf-8'))
producer.flush()
