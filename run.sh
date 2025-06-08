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
