#!/bin/bash

# 1. 
ln -s /tmp rep_etc
# 2.
find / -type f -inum 2 2>/dev/null
find / -type f -inum 128 2>/dev/null
# 3.
find /etc -name *.conf -type f -print -ok cp {} test \; 2> /dev/null
# 4.
find ./ -type f \( -ok ls -l {} \; -or -ok cat {} \; \)
# 5.
find /usr/bin -perm -4000 -exec ls -l {} \;
