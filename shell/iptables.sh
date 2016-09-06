#!/bin/bash
#chkconfig: 2345 08 92
#description:auto_run
ipt="/sbin/iptables"
$ipt -F
$ipt -P INPUT ACCEPT
$ipt -P OUTPUT ACCEPT
$ipt -P FORWARD ACCEPT
$ipt -A INPUT -s 192.168.0.0/24 -p tcp --dport 22 -j ACCEPT
$ipt -A INPUT -p tcp --dport 80 -j ACCEPT
$ipt -A INPUT -p tcp --dport 21 -j ACCEPT
$ipt -A INPUT -s 192.168.1.103/32 -p tcp --dport 22 -j ACCEPT
$ipt -A INPUT -s 192.168.1.108/32 -p tcp --dport 22 -j ACCEPT
$ipt -A INPUT -p tcp --dport 22 -j DROP
