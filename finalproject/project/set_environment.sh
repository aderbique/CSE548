#!/bin/bash

sudo apt update -y && \
sudo apt install -y software-properties-common && \
sudo apt install -y python3.8 python3.8-venv && \
python3.8 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
