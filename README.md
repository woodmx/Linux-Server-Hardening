# Linux Server Hardening Project

## Overview
This project demonstrates how to secure a Fedora Linux server using system hardening best practices.

## Security Controls Implemented
- System updates and patching
- Disabled root SSH login
- Changed default SSH port
- Configured firewall rules
- Installed Fail2Ban intrusion prevention
- Enforced strong password policy
- Enabled automatic security updates

## Threat Model
- Brute force SSH attacks
- Privilege escalation
- Port scanning
- Weak password compromise

## Tools Used
- firewalld
- fail2ban
- sshd
- libpwquality
- dnf-automatic

## Docker Deployment
Deployed a minimal Nginx web service using Docker and an unprivileged Nginx image.
- Deployed an unprivileged Nginx container to serve a static page.
- Host port: 8080
- Image: nginxinc/nginx-unprivileged:alpine
- Restart policy: unless-stopped
