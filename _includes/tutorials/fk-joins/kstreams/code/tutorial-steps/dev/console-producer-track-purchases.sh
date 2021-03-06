docker exec -i schema-registry /usr/bin/kafka-avro-console-producer --topic purchases --broker-list broker:9092\
  --property "parse.key=true"\
  --property 'key.schema={"type":"long"}'\
  --property "key.separator=:"\
  --property value.schema="$(< src/main/avro/track-purchase.avsc)"
