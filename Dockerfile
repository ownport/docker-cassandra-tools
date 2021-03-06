FROM alpine:3.8

ENV CASSANDRA_VERSION=3.11.0

RUN apk add --no-cache \
    wget \
    openjdk8-jre \
    python

RUN mkdir /opt && cd /opt \
    && wget -q http://archive.apache.org/dist/cassandra/${CASSANDRA_VERSION}/apache-cassandra-${CASSANDRA_VERSION}-bin.tar.gz \
    && tar zxf apache-cassandra-${CASSANDRA_VERSION}-bin.tar.gz \
    && mv -v apache-cassandra-${CASSANDRA_VERSION} cassandra \
    && rm -fv apache-cassandra-${CASSANDRA_VERSION}-bin.tar.gz \
    && rm -rf /opt/cassandra/javadoc

ENV PATH="/opt/cassandra/bin:${PATH}"

# ENTRYPOINT ["nodetool"]
