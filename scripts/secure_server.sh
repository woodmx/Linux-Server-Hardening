#!/bin/bash

echo "Updating system..."
sudo dnf update -y

echo "Installing fail2ban..."
sudo dnf install fail2ban -y

echo "Enabling fail2ban..."
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

echo "Installing password policy tools..."
sudo dnf install libpwquality -y

echo "Installing automatic updates..."
sudo dnf install dnf-automatic -y
sudo systemctl enable --now dnf-automatic.timer

echo "Hardening setup complete."
