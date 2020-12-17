#!/bin/bash

# Installing Node 10
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y nodejs

# Install Plugins
sudo pip3 install jupyterlab-git

# Build JupyterLab Extensions
sudo jupyter lab build
sudo jupyter labextension install jupyterlab-drawio