#!/bin/bash

echo "[INFO] Building module starting........"

echo "[INFO] Set up environment"
#apt-get update
#
#apt-get install -y build-essential python-dev libevent-dev libpq-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libffi-dev libpython-dev
apt-get install build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev

echo "[INFO] Creating virtual environment"
python3 -m venv venv
source venv/bin/activate

echo "[INFO] Install pybuilder"
pip install --pre  pybuilder

echo "[INFO] Install requirements"
pip install -r requirements.txt

echo "[INFO] Build project"
pyb
