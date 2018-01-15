#!/bin/bash
ansible all -m ping
sleep 5
ansible all -m setup
