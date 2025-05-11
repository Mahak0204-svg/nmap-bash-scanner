#!/bin/bash
echo "Welcome to Simple Nmap Bash Scanner"
read -p "Enter the target IP or domain: " target
filename="results/${target}_scan.txt"
mkdir -p results
echo "Scanning host: $target"
echo "Results will be saved in $filename"

# Ping Scan
echo "Running Ping Scan..." | tee -a $filename
nmap -sn $target | tee -a $filename

# Port Scan
echo -e "\nRunning Port Scan..." | tee -a $filename
nmap -p- $target | tee -a $filename

# OS Detection
echo -e "\nRunning OS Detection and Service Version Scan..." | tee -a $filename
nmap -A $target | tee -a $filename

echo -e "\nScan completed. Check the file: $filename"


SCREENSHOTS
Ping scan
Running Ping Scan...
Starting Nmap 7.80 ( https://nmap.org ) at 2025-05-11 10:15 UTC
Nmap scan report for 192.168.1.1
Host is up (0.0045s latency).
Nmap done: 1 IP address (1 host up) scanned in 1.57 seconds

Port scan
Running Port Scan...
Starting Nmap 7.80 ( https://nmap.org ) at 2025-05-11 10:17 UTC
Nmap scan report for 192.168.1.1
Host is up (0.0042s latency).
Not shown: 65533 closed ports
PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http
443/tcp open https
Nmap done: 1 IP address (1 host up) scanned in 2.52 seconds

OS and Version detection
Running OS Detection and Service Version Scan...
Starting Nmap 7.80 ( https://nmap.org ) at 2025-05-11 10:19 UTC
Nmap scan report for 192.168.1.1
Host is up (0.0041s latency).
Not shown: 65533 closed ports
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.2p2 Ubuntu 4ubuntu2.8
80/tcp open  http    Apache httpd 2.4.29
443/tcp open https   Apache httpd 2.4.29
OS fingerprint not available.
Nmap done: 1 IP address (1 host up) scanned in 3.87 seconds