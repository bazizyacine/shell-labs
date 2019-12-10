#!/bin/bash

# 1. 
ls -altr
# 2.
more ../examples.desktop
less ../examples.desktop
# 3.
find /bin -name ls*
# 4.
cd | mkdir rep1
chmod o+t rep1
# 5.
touch prog1
chmod u+x prog1
./prog1
# 6.
find /etc -name vimrc -type f 1> res 2> /dev/null
# 7.
echo $LANG






