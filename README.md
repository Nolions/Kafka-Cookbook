# Kafka-Cookbook

## Installing, setting adn run

### Install

install kafka&zookeeper

```bash
brew install kafka
```

> 正常情況下使用Homebrow安裝kafka時會連同zookeeper，如果zookeeper未確實被安裝，在執行以下command

```bash
brew install zookeeper
```

### Setting

modify /usr/local/etc/kafka/server.properties

find listeners=PLAINTEXT://:9092 and uncomment it

### Run && Stop

***run***

```bash
brew services start kafka
brew services start zookeeper
```

***stop***

```bash
brew services stop kafka
brew services stop zookeeper
```

## Usage

### create Topic

```bash
# kafka-topics --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic <topic_name>
# EX:
kafka-topics --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
```

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
