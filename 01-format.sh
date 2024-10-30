#!/bin/bash

# List of NVMe devices
devices=("nvme0" "nvme1" "nvme2")

# Format all devices
for device in "${devices[@]}"; do
    nvme format "/dev/$device" -s 2 -n 1 --force
done
