# Subdomain Status Checker

A simple Bash script to check whether common subdomains of a website are online or offline.

## What This Script Does

The script checks popular subdomains like:

- www
- mail
- admin
- blog
- dev
- api
- test
- staging

It will show:

- Whether the subdomain is ONLINE or OFFLINE
- The IP address (if available)
- HTTP response status

---

## Requirements

Make sure these tools are installed:

- Bash
- curl
- dig

### Install on Ubuntu/Debian

```bash
sudo apt install curl dnsutils
