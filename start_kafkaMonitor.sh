#!/usr/bin/env bash
ZOOKEEPER_HOST=zk1.server.com

java -Djava.security.auth.login.config=/opt/interset/etc/jaas/kafka_client_jaas.conf \
  -cp /<path>/KafkaOffsetMonitor/KafkaOffsetMonitor-assembly-0.4.7-dmilan-SNAPSHOT.jar  \
       com.quantifind.kafka.offsetapp.OffsetGetterWeb \
     --zk ${ZOOKEEPER_HOST} \
     --port 9144 \
     --refresh 10.seconds \
     --retain 2.days \
     --dbName offsetapp_kafka \
     --consumerConfig /<path>/kafka-config.property