#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

clear
echo "======================================"
echo "    SUBDOMAIN STATUS CHECKER          "
echo "======================================"
echo ""

echo "Enter the domain name (eg: google.com):"
read domain

if [ -z "$domain" ]; then
    echo -e "${RED}[!] Error: Domain name cannot be empty.${NC}"
    exit 1
fi

echo ""
echo "Checking subdomains for: $domain"
echo "--------------------------------------"

subdomains=("www" "mail" "admin" "blog" "dev")

for sub in "${subdomains[@]}"
do
    full_url="${sub}.${domain}"

    curl -s --connect-timeout 3 "http://$full_url" > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}[+] $full_url - ONLINE${NC}"
    else
        echo -e "${RED}[-] $full_url - OFFLINE${NC}"
    fi
done

echo "--------------------------------------"
echo "Scan Completed!"
