# Kafka-Cookbook

## Installing && setting

install kafka&zookeeper

```bash
brew install kafka
```

modify /usr/local/etc/kafka/server.properties

find listeners=PLAINTEXT://:9092 and uncomment it

## Start

```bash
brew services start kafka
brew services start zookeeper
```

## Create Topic

```bash
# kafka-topics --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic <topic_name>
# EX:
kafka-topics --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
```

## Use

### producer

```bash
# kafka-console-producer --broker-list localhost:9092 --topic <topic_name>
# EX:
kafka-console-producer --broker-list localhost:9092 --topic test
```

### consumer

```bash
# kafka-console-consumer --bootstrap-server localhost:9092 --topic <topic_name> --from-beginning
# EX:
kafka-console-consumer --bootstrap-server localhost:9092 --topic test --from-beginning
```
