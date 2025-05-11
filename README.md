# Automated Network Reconnaissance using Nmap and Bash

## Project Overview

This project is focused on automating network scanning tasks using Nmap (Network Mapper) and Bash scripting on Linux. The goal is to help beginners understand how cybersecurity professionals gather information about computer networks, identify potential vulnerabilities, and create a basic automated tool.

## Objective

* Understand basic Nmap usage for scanning networks.
* Learn to write Bash scripts to automate common scanning operations.
* Develop a beginner-friendly tool that:
    * Accepts a target IP range or domain.
    * Performs basic scans (ping, port, OS detection).
    * Saves output in organized files.
* Host the completed tool and documentation on GitHub.

## Tools & Technologies Used

* Nmap: For network and vulnerability scanning.
* Bash (Linux Shell Scripting): To automate the tasks.
* GitHub: For version control and public project hosting.

## Folder Structure

nmap-bash-scanner/

├── README.md

├── scan.sh

└── results/

└── [targetname]_scan.txt

└── LICENSE

## How It Works

1.  User runs `scan.sh` and inputs a target IP or domain.
2.  Script runs the following:
    * Ping scan to check if the host is up.
    * Port scan to find open ports.
    * OS detection and service version detection.
3.  All outputs are saved in a text file inside the `results/` folder.

## Sample Bash Script (scan.sh)

```bash
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


## Project Milestones

* [x] Setup Nmap and Bash environment
* [x] Write the core script (scan.sh)
* [x] Test on multiple IPs/domains
* [x] Upload to GitHub with README
* [ ] Add advanced features (like HTML reports or email alerts) - Optional
