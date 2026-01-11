#!/bin/bash

LOG_FILE="/var/log/auth.log"
THRESHOLD=5

declare -A ip_count

while read -r line; do
    for pattern in "Failed password" "Invalid user" "authentication failure"; do
        if [[ "$line" == *"$pattern"* ]]; then
            ip=$(echo "$line" | grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}')
            if [[ -n "$ip" ]]; then
                ((ip_count["$ip"]++))
            fi
        fi
    done
done < "$LOG_FILE"

echo "Suspicious IPs:"
for ip in "${!ip_count[@]}"; do
    if [[ ${ip_count[$ip]} -ge $THRESHOLD ]]; then
        echo "$ip -> ${ip_count[$ip]} attempts"
    fi
done
