#!/bin/bash

# Relocating notebooks
if [ ! -d ~/notebooks/Taller_BBDD ]; then
    mv ~/notebooks ~/notebooks_old
    mkdir ~/notebooks
    mv ~/notebooks_old ~/notebooks/Taller_BBDD

    rm -f /home/learner/notebooks/.install
fi

# Installing Node 10
if [ ! -f /usr/bin/nodejs ]; then
    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    sudo apt install -y nodejs

    sudo chown learner:learner ~/.config
fi

# Install Jupyter Git Extension
sudo pip3 install jupyterlab-git

# Installa DrawIO Extension
sudo jupyter labextension install jupyterlab-drawio

# Build Extensions
sudo jupyter lab build