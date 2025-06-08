# Generate Data
python python-fake-data-producer-for-apache-kafka/main.py --cert-folder ./certs/ \
  --host ${BOOTSTRAP_SERVER:-localhost} \
  --port ${PORT:-9092} \
  --topic-name ${TOPIC_NAME:-pizza} \
  --nr-messages ${NUMBER_OF_MESSAGES:-0} \
  --max-waiting-time ${MAX_TIME:-0} \
  --subject ${SUBJECT:-pizza}	\
  --security-protocol ${SECURITY_PROTOCOL:-PLAINTEXT}
