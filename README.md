# cloudflare-grafana
 Grafana Dashboard that shows Cloudflare Overviews and Analytics from the RESTful API

## Installation

### Required settings in Cloudflare-grafana
1. Take the Global API Key
Login to cloudflare dashboard, click `My Profile`
<img width="1312" alt="Screen Shot 2022-07-25 at 16 07 41" src="https://user-images.githubusercontent.com/38155944/180744396-c1509490-3586-4498-9b3f-4e490020b7e5.png">

2. Find our Cloudflare Zone ID
<img width="1312" alt="Screen Shot 2022-07-25 at 16 09 56" src="https://user-images.githubusercontent.com/38155944/180744434-2de29ade-da62-4bf0-bdd7-69c5af4c818c.png">


3. Install InfluxDB, Telegraf, and Grafana
```
docker compose up -d
```
4. Add InfluxDB datasource
<img width="1312" alt="Screen Shot 2022-07-25 at 16 43 16" src="https://user-images.githubusercontent.com/38155944/180748288-d06d5f71-9d1b-411e-8b14-b5eb24a8f580.png">

5. Export the env variable
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
6. Running script
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
7. Import grafana dashboard 
Select the name you want and enter the ID: 12167, which is the unique ID of the Dashboard, or the URL:

- https://grafana.com/grafana/dashboards/12167/

<img width="1703" alt="Screen Shot 2022-07-25 at 14 38 20" src="https://user-images.githubusercontent.com/38155944/180745007-28c30163-744c-407d-8962-33cf910dcbd9.png">

