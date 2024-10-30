#!/bin/bash

# List of NVMe devices
devices=("nvme0" "nvme1" "nvme2")

# Start crypto erase and sanitize log
for device in "${devices[@]}"; do
    nvme sanitize "/dev/$device" -a start-crypto-erase
    nvme sanitize-log "/dev/$device"
done
