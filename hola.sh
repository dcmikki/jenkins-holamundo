#!/bin/bash
echo "Hola Mundo"
ansible localhost -m setup
ansible localhost -s -m shell -a "apt-get update && apt-get upgrade -y && apt-get autoclean && apt-get autoremove -y"

