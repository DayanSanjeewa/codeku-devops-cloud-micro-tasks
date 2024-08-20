#!/bin/bash

#For monitoring system resources (CPU usage, memory usage, and disk usage) and logs the output to a file.
#Author: Dayan Sanjeewa
#Format: Date&Time - CPU%, Mem%, Disk%

# Log file location
LOG_FILE="/var/log/system_monitor.log"

# Get current timestamp
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# Get CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

# Get Memory usage
memory_usage=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')

# Get Disk usage
disk_usage=$(df -h / | awk 'NR==2 {print $5}')

# Log the output
echo "$timestamp - CPU Usage: $cpu_usage%, Memory Usage: $memory_usage%, Disk Usage: $disk_usage" >> $LOG_FILE
