#!/bin/bash
set -e
sudo apt-get update
sudo apt-get install -y curl gzip tar fswatch jq
sudo curl -LO https://github.com/codenlighten/sentinel-agent/raw/main/sentinel-node-agent-installation.tgz
sudo tar xzf sentinel-node-agent-installation.tgz
cd sentinel-node-agent-installer
sudo bash install.sh
sudo systemctl daemon-reload
sudo systemctl enable sentinel-node-agent
sudo systemctl start sentinel-node-agent
sudo systemctl status sentinel-node-agent
