#!/bin/bash

sudo docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions
sudo mkdir /opt/loki
sudo mkdir /opt/loki/loki_data 
sudo mkdir /opt/loki/grafana 
sudo chown -R 10001:10001 /opt/loki/loki_data
sudo chown -R 472:472 /opt/loki/grafana/
sudo docker-compose up -d
