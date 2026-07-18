#!/bin/bash

# Rota IPv4 para a rede dos clientes
ip route add 192.168.10.0/24 via 100.100.100.254

# Rota IPv6 para a rede dos clientes
ip -6 route add 2001:db8:2026:10::/64 via 2001:db8:2026:100::254

# Inicializando o BIND
/usr/sbin/rndc-confgen -a
/usr/sbin/named -c /etc/bind/named.conf

while true; do sleep 10; done
