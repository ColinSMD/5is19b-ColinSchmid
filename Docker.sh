#!/bin/bash
cd ~
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
tar xvfz node_exporter-1.3.1.linux-amd64.tar.gz
sudo mv node_exporter-1.3.1.linux-amd64/node_exporter /usr/local/bin/
sudo useradd -rs /bin/false node_exporter
sudo tee /etc/systemd/system/node_exporter.service<<EOF
[Unit]
Description=Node Exporter
After=network.target
[Service]
User=node_exporter
Group=node_exporter
Type=simple
ExecStart=/usr/local/bin/node_exporter
[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable node_exporter

wget "https://raw.githubusercontent.com/ColinSMD/5is19b-ColinSchmid/main/prometheus.yml", "-O", "/opt/prometheus.yml"
docker run -d --name prometheus-container prom/prometheus --config.file=/opt/prometheus.yml
wget "https://raw.githubusercontent.com/ColinSMD/5is19b-ColinSchmid/main/grafana.yml", "-O", "/opt/grafana.yml"
docker run -d --name grafana-container grafana/grafana --config.file=/opt/grafana.yml
