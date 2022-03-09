from kafka import KafkaConsumer

import kafka_vars

config = {
    'bootstrap_servers':  kafka_vars.BOOTSTRAP_SERVERS,
    'group_id': 'python-group-c',
    'client_id': 'consumer_c'
}

consume = KafkaConsumer(kafka_vars.TOPIC, **config)

for msg in consume:
    print(f'Group C - Message: {msg}')
