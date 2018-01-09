#!/bin/bash
echo "Hola Mundo"
sleep 3
ansible localhost -m setup
sleep 5
ansible localhost -s -m shell -a "apt-get update && apt-get upgrade -y && apt-get autoclean && apt-get autoremove -y"

