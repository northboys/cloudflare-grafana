# cloudflare-grafana
 Grafana Dashboard that shows Cloudflare Overviews and Analytics from the RESTful API

## Installation

### Required settings in Cloudflare-grafana
1. Take the Global API Key
Login to cloudflare dashboard, click `My Profile`
Screen Shot 2022-07-25 at 16.07.41.png
2. Find our Cloudflare Zone ID
Screen Shot 2022-07-25 at 16.09.56.png
3. Install InfluxDB, Telegraf, and Grafana
4. Export the env variable
```
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
```
5. Running script
```
# Change permission
chmod +x cloudflare-analytics.sh

# Install jq
sudo apt-get install jq

# Running script
./cloudflare-analytics.sh
```
And when we launch it, if everything went well, we’ll see what happens next:
```
Writing Zone data to InfluxDB cloudflare_analytics
HTTP/1.1 204 No Content
Content-Type: application/json
Request-Id: 97837f77-0bfa-11ed-bf8f-0242ac140002
X-Influxdb-Build: OSS
X-Influxdb-Version: 1.8.10
X-Request-Id: 97837f77-0bfa-11ed-bf8f-0242ac140002
Date: Mon, 25 Jul 2022 09:17:23 GMT
```

