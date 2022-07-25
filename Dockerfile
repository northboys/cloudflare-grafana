FROM ubuntu:20.04 as build

MAINTAINER  Izalul, izalulhaq@hotmail.com

COPY cloudflare-analytics.sh .

# Install packages.
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install jq -y && \
    apt-get install curl -y && \
    rm -rf /var/lib/apt/lists/*

# Endpoint URL for InfluxDB
ENV INFLUXDB_URL="YOURINFLUXSERVERIP" 
ENV INFLUXDB_PORT="8086" 
ENV INFLUXDB_DB="influx" 
ENV INFLUXDB_USER="admin" 
ENV INFLUXDB_PASSWD="admin123" 

# Endpoint URL for login action
ENV CLOUDFLARE_API_KEY="YOURAPIKEY"
ENV CLOUDFLARE_ZONE="YOURZONEID"
ENV CLOUDFLARE_EMAIL="YOUREMAIL"

# Default command
CMD ["./cloudflare-analytics.sh"]