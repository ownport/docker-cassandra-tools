build:
	docker build -t ownport/nodetool:X.X.X-datastax .

console:
	docker run -ti --rm --name nodetool \
		ownport/nodetool:X.X.X-datastax \
		/bin/bash
