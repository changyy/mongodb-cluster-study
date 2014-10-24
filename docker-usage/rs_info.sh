#!/bin/sh

# start server
sudo docker start rs1_part1
rs1_part1_ip=`sudo docker inspect --format '{{.NetworkSettings.IPAddress}}' rs1_part1 `
rs1_part1_host_port=`sudo docker inspect rs1_part1 | grep "HostPort" | uniq | awk -F'"' '{print $4}'`
echo "IP: " ${rs1_part1_ip}
echo "Port: " ${rs1_part1_host_port}

sudo docker start rs1_part2
rs1_part2_ip=`sudo docker inspect --format '{{.NetworkSettings.IPAddress}}' rs1_part2`
rs1_part2_host_port=`sudo docker inspect rs1_part2 | grep "HostPort" | uniq | awk -F'"' '{print $4}'`
echo "IP: " ${rs1_part2_ip}
echo "Port: " ${rs1_part2_host_port}

sudo docker start rs1_part3
rs1_part3_ip=`sudo docker inspect --format '{{.NetworkSettings.IPAddress}}' rs1_part3 `
rs1_part3_host_port=`sudo docker inspect rs1_part3 | grep "HostPort" | uniq | awk -F'"' '{print $4}'`
echo "IP: " ${rs1_part3_ip}
echo "Port: " ${rs1_part3_host_port}
