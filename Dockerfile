FROM ubuntu:20.04 as build

MAINTAINER  Izalul, izalulhaq@hotmail.com

COPY cloudflare-analytics.sh .

# Install packages.
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install jq -y && \
    apt-get install curl -y && \
    rm -rf /var/lib/apt/lists/*

# Default command
CMD ["./cloudflare-analytics.sh"]