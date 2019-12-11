# 1. 
ln -s /tmp rep_etc
# 2.
find / -type f -inum 2 2>/dev/null
find / -type f -inum 128 2>/dev/null
# 3.
find /etc -name *.conf -type f -print -ok cp {} test \; 2> /dev/null
# 4.


