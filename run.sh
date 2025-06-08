#!/bin/bash

# Check for AIVEN_SERVICE_NAME
if [ -n "$AIVEN_SERVICE_NAME" ]; then
  echo "AIVEN_SERVICE_NAME is set: $AIVEN_SERVICE_NAME"

  # Generate Data
  python python-fake-data-producer-for-apache-kafka/main.py --cert-folder ./certs/ \
    --host ${BOOTSTRAP_SERVER:-localhost} \
    --port ${PORT:-9092} \
    --service_name ${AIVEN_SERVICE_NAME} \
    --project_name ${AIVEN_PROJECT_NAME} \
    --username ${AIVEN_USERNAME} \
    --token ${AIVEN_TOKEN} \
    --privatelink ${AIVEN_PRIVATELINK} \
    --topic-name ${TOPIC_NAME:-pizza} \
    --partitions ${TOPIC_PARTITIONS:-1} \
    --repliation ${TOPIC_REPLICATION_FACTOR:-1} \
    --nr-messages ${NUMBER_OF_MESSAGES:-0} \
    --max-waiting-time ${MAX_TIME:-0} \
    --subject ${SUBJECT:-pizza}	\
    --security-protocol ${SECURITY_PROTOCOL:-PLAINTEXT}
else
  echo "AIVEN_SERVICE_NAME is not set"
  
  # Generate Data
  python python-fake-data-producer-for-apache-kafka/main.py --cert-folder ./certs/ \
    --host ${BOOTSTRAP_SERVER:-localhost} \
    --port ${PORT:-9092} \
    --topic-name ${TOPIC_NAME:-pizza} \
    --partitions ${TOPIC_PARTITIONS:-1} \
    --repliation ${TOPIC_REPLICATION_FACTOR:-1} \
    --nr-messages ${NUMBER_OF_MESSAGES:-0} \
    --max-waiting-time ${MAX_TIME:-0} \
    --subject ${SUBJECT:-pizza}	\
    --security-protocol ${SECURITY_PROTOCOL:-PLAINTEXT}
fi

