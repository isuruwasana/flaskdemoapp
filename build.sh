#!/bin/bash

echo "[INFO] Building module starting........"

echo "[INFO] Set up environment"
sudo apt-get update
sudo apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv python-setuptools

echo "[INFO] Creating virtual environment"
sudo apt-get install python3-venv
python3 -m venv venv
source venv/bin/activate

echo "[INFO] Install pybuilder"
pip3 install --pre pybuilder

echo "[INFO] Install requirements"
pip3 install -r requirements.txt

echo "[INFO] Build project"
pyb







