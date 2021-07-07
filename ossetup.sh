#/bin/bash
set +x
apt update
#apt install -y pkg-config build-essential libssl-dev curl jq #network-manager net-tools netplan.io
apt install -y libssl1.1 netplan.io network-manager net-tools 
echo "net.ipv6.conf.default.disable_ipv6 = 0" >> /etc/sysctl.conf
echo "net.ipv6.conf.all.disable_ipv6 = 0" >> /etc/sysctl.conf
echo > /etc/network/interfaces << EOF
iface eth0 inet6 static
pre-up modprobe ipv6
address IPv6-IP-Address
netmask 64
gateway IPv6-IP-Gateway-Address
EOF
