build:
	docker build --tag ownport/cassandra-tools:3.11.0 .

console:
	docker run -ti --rm --name cassandra-tools \
		ownport/cassandra-tools:3.11.0 \
		/bin/sh
