#!/bin/bash
cd ~
docker run --name node-exporter-container prom/node-exporter
docker run --name prometheus-container prom/prometheus
docker run --name grafana-container grafana/grafana
