#!/bin/bash
#
docker exec -it upf iptables -F
docker exec -it upf iptables-legacy -A FORWARD -s 192.168.100.0/24 -d 100.0.0.0/24 -j ACCEPT
docker exec -it upf iptables-legacy -A FORWARD -s 192.168.100.0/24 -j DROP
docker exec -it upf iptables-legacy -A FORWARD -s 192.168.200.0/24 -j DROP

docker exec -it upf2 iptables -F
docker exec -it upf2 iptables-legacy -A FORWARD -s 192.168.200.0/24 -d 10.0.1.0/24 -j ACCEPT
docker exec -it upf2 iptables-legacy -A FORWARD -s 192.168.200.0/24 -j DROP
docker exec -it upf2 iptables-legacy -A FORWARD -s 192.168.100.0/24 -j DROP
