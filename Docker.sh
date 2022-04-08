#!/bin/bash
cd ~
docker run --name node-exporter-Container grafana/grafanadocker run prom/node-exporter
docker run --name prometheus-Container grafana/grafanadocker run prom/prometheus
docker run --name grafana-Container grafana/grafana
