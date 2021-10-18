topic = test
host = localhost
port = 2181

create-topic:
	kafka-topics --create --zookeeper ${host}:${port} --replication-factor 1 --partitions 1 --topic ${topic}

list-topics:
	kafka-topics --list --zookeeper ${host}:${port}

detail--topic:
	kafka-topics --describe --zookeeper ${host}:${port} --topic ${topic}

delete-topic:
	kafka-topics --delete --zookeeper ${host}:${port} --topic ${topic}

producer:
	kafka-console-producer --broker-list localhost:9092 --topic ${topic}

consumer:
	kafka-console-consumer --bootstrap-server localhost:9092 --topic ${topic} --from-beginning

run:
	brew services start kafka && brew services start zookeeper

stop:
	brew services stop kafka && brew services stop zookeeper