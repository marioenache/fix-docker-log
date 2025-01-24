#!/bin/bash

cd /var/lib/docker/containers/ || { echo "Docker container path not found."; exit 1; }

for container_dir in *; do
    log_path="/var/lib/docker/containers/$container_dir/${container_dir}-json.log"

    if [ -d "$container_dir" ] && [ ! -f "$log_path" ]; then
        echo "Added log file for container with ID: $container_dir"
        touch "$log_path"
    fi
done
