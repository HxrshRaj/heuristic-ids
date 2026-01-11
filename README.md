# heuristic-ids
# Heuristic Intrusion Detection System (IDS)

## Overview
This project implements a lightweight host-based intrusion detection system
focused on detecting suspicious patterns through log analysis.

Instead of signature-based detection, the system relies on behavioral heuristics
derived from repeated failed attempts and abnormal access patterns.

## Detection Logic
- Regex-based log pattern matching
- Brute-force attempt identification
- Rate-based anomaly detection
- Temporary isolation using firewall rules

## Defensive Actions
- Automated IP blocking via iptables
- Real-time response to detected threats
- Log-based forensic visibility

## What This Project Demonstrates
- Understanding of attack behavior rather than just tools
- Defensive automation using Linux utilities
- Practical security thinking at the host level

## Tools & Environment
- Bash / Shell scripting
- Linux
- iptables
- System logs
