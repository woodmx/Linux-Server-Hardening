# Fedora Linux Server Hardening Steps

## 1. System Updates
- Updated all system packages using `dnf update`
- Ensured latest security patches were applied

## 2. Created Non-Root Administrative User
- Created user: secureadmin
- Added to wheel group for sudo privileges
- Principle of Least Privilege applied

## 3. Disabled Root SSH Login
- Modified `/etc/ssh/sshd_config`
- Set `PermitRootLogin no`
- Restarted sshd service

## 4. Changed Default SSH Port
- Changed SSH from port 22 to 2222
- Reduced automated scanning attempts

## 5. Configured Firewall (firewalld)
- Allowed only required ports (2222, 8080)
- Removed default SSH rule (if applicable)
- Verified with `firewall-cmd --list-all`

## 6. Installed and Configured Fail2Ban
- Installed fail2ban
- Enabled service at boot
- Protected against brute-force login attempts

## 7. Enforced Strong Password Policy
- Installed libpwquality
- Required minimum length: 12
- Required upper, lower, digit, and special character

## 8. Enabled Automatic Security Updates
- Installed dnf-automatic
- Enabled automatic update timer

## 9. Disabled Unnecessary Services
- Reviewed running services
- Disabled unused services to reduce attack surface
