#!/bin/bash
cd ~

docker pull prom/node-exporter
docker run --name node-exporter-container prom/node-exporter
docker pull prom/prometheus
docker run --name prometheus-container prom/prometheus
docker run pull grafana/grafana
docker run --name grafana-container grafana/grafana
