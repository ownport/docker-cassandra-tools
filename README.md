# docker-cassandra-tools

Apache Cassandra tools in Docker

- nodetool
- cqlsh
- sstable utils

## How to use 

```sh
$ make build
...
$ make console
docker run -ti --rm --name nodetool \
	ownport/cassandra-tools:3.11.0 \
	/bin/sh
/ # 
```

## Links

- https://github.com/loivis/docker-nodetool
