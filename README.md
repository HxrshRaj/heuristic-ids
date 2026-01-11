# Heuristic Intrusion Detection System (IDS)

## Overview
This project implements a lightweight, host-based intrusion detection system
designed to study brute-force attack behavior through log analysis.

The system focuses on identifying suspicious authentication attempts using
heuristic and pattern-based techniques rather than signature databases or
external security tools.

---

## Detection Approach
- Parses authentication logs to identify failed login attempts
- Uses regex-based pattern matching to fingerprint brute-force behavior
- Applies threshold-based logic to flag suspicious IP addresses

---

## Behavioral Analysis
The IDS models attacker behavior by observing:
- Repeated authentication failures
- Abnormal access frequency
- Pattern repetition across log entries

This allows the system to distinguish benign errors from malicious attempts
in controlled or simulated environments.

---

## Response Model (Research-Oriented)
The project demonstrates how detection signals can be used to inform
defensive actions such as temporary isolation or alerting.

Active blocking mechanisms (e.g., firewall rules) are intentionally not
automated in this repository and are discussed at a conceptual level only.

---

## Key Concepts Explored
- Host-based intrusion detection
- Heuristic security analysis
- Log forensics
- Defensive security fundamentals

---

## Scope
This project is intended for educational and research purposes and emphasizes
understanding attack patterns rather than deploying a production IDS.
