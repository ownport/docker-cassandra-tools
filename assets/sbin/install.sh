#!/bin/bash

set -e

export DEBIAN_FRONTEND=noninteractive
export ACTIVTE_DSC="dsc30"

echo "[INFO] Install addition packages" && \
    apt update && \
    apt upgrade -y && \
    apt install -y --no-install-recommends \
        curl \
        gnupg2 \
        software-properties-common

echo "[INFO] Adding DataStax repository" && \
    echo "deb http://debian.datastax.com/community stable main" | \
        tee -a /etc/apt/sources.list.d/cassandra.sources.list && \
    curl -k -L https://debian.datastax.com/debian/repo_key | \
        apt-key add - > /dev/null

echo "[INFO] Updating repos" && \
    apt update && \

echo "[INFO] Install DSC" && \
    apt install -y --no-install-recommends \
        ${ACTIVTE_DSC}

echo "[INFO] Cleanup" && \
    apt autoclean && \
    apt autoremove


