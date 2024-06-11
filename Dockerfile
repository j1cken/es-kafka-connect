FROM quay.io/strimzi/kafka:0.41.0-kafka-3.7.0
USER root:root
RUN curl -L -O 'https://d2p6pa21dvn84.cloudfront.net/api/plugins/confluentinc/kafka-connect-elasticsearch/versions/14.0.17/confluentinc-kafka-connect-elasticsearch-14.0.17.zip' && \
unzip confluentinc-kafka-connect-elasticsearch-14.0.17.zip && \
mv confluentinc-kafka-connect-elasticsearch-14.0.17/lib/kafka-connect-elasticsearch-14.0.17.jar /opt/kafka/plugins/ && \
mv confluentinc-kafka-connect-elasticsearch-14.0.17/lib/*.jar /opt/kafka/libs/ && \
rm -rf confluentinc-kafka-connect-elasticsearch-14.0.17* && \
chmod a+r /opt/kafka/plugins/*
USER 1001
