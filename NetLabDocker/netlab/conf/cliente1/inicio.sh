#!/bin/bash
# Removendo rota default 
ip route del default
ip -6 route del default

ip route add 100.100.100.0/24 via 192.168.10.254
ip route add 2001:db8:2026:100::/64 via 2001:db8:2026:10::254

while true; do sleep 10; done
