#!/bin/bash
sudo ufw allow 22
sudo ufw allow 3142
sudo ufw allow 3306
sudo ufw allow 80
sudo ufw allow 8080
sudo ufw status verbose