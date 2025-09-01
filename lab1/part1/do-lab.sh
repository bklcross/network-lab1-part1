#!/usr/bin/bash

# Configure switch node as bridge to connect all 4 hosts
docker exec clab-lab1-part1-switch ip link add name br0 type bridge
docker exec clab-lab1-part1-switch ip link set dev br0 up
docker exec clab-lab1-part1-switch ip link set dev eth1 master br0
docker exec clab-lab1-part1-switch ip link set dev eth2 master br0
docker exec clab-lab1-part1-switch ip link set dev eth3 master br0
docker exec clab-lab1-part1-switch ip link set dev eth4 master br0
docker exec clab-lab1-part1-switch bash -c 'echo 0 > /sys/class/net/br0/bridge/stp_state'