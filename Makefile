topic = test

create-topic:
	kafka-topics --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic ${topic}

producer:
	kafka-console-producer --broker-list localhost:9092 --topic ${topic}

consumer:
	kafka-console-consumer --bootstrap-server localhost:9092 --topic ${topic} --from-beginning

run:
	brew services start kafka && brew services start zookeeper

stop:
	brew services stop kafka && brew services stop zookeeper