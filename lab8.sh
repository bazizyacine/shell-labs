#!/bin/bash

# 1.
mount | awk '{ printf "Le système de fichiers %s est monté sur %s\n", $1, $3} '
# 2.
mount | awk 'BEGIN { print "SysF\tPointMont" } $3~/\/$/ {printf "Le système de fichiers %s est monté sur %s\n", $1, $3} '
mount | awk 'BEGIN { print "SysF\tPointMont" } $3=="/" {printf "Le système de fichiers %s est monté sur %s\n", $1, $3} '
# 3.
awk 'BEGIN { ORS="%" } { print > "p3" }' /etc/passwd
# 4.
awk 'BEGIN { RS="%"; ORS="\n" } { print }' p3
# 5.
ps -A | awk -v prs="bash" '$4~/prs/ { system("kill -9 " $(prs)) }'
ps -A | awk -v prs="bash" '$4==prs { system("kill -9 " $(prs)) }'
# 6.
ip a | awk '$9 == "wlan0" { print $2 }'
