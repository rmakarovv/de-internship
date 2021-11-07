#! /bin/bash
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' kafka-connect:8083)" != "200" ]]
    do sleep 5
done

echo "\n --------------Creating SOURCE connectors"
for filename in /connectors/source/*.json; do
  curl -X POST -H "Content-Type: application/json" -d @$filename http://kafka-connect:8083/connectors
done

echo "\n --------------Creating SINK connectors"
for filename in /connectors/sink/*.json; do
  echo "Processed filename is: ${filename}"
  curl -X POST -H "Content-Type: application/json" -d @$filename http://kafka-connect:8083/connectors
done