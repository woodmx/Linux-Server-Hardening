# Before vs After Hardening

## Before Hardening
- Root login allowed via SSH
- Default SSH port (22)
- No intrusion prevention
- Weak/default password policies
- No automatic security updates
- Default firewall configuration

## After Hardening
- Root SSH login disabled
- SSH moved to port 2222
- Fail2Ban installed and active
- Strong password policy enforced
- Automatic security updates enabled
- Firewall restricted to necessary ports only
- Dockerized Nginx service deployed securely

## Security Improvements
- Reduced brute-force attack surface
- Limited privileged access
- Enforced credential strength
- Added automated intrusion mitigation
- Reduced exposed services
