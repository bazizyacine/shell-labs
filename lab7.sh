#!/bin/bash

#  1.
sed 's;\(.*\):.*:\(.*\):.*:.*:\(.*\):.*;NOM = \1 UID = \2 REP = \3;' /etc/passwd
# 2.
sed 's;\(.*\):.*:\(.*\):.*:.*:\(.*\):.*;NOM = \1 UID = \2 REP = \3;' /etc/passwd > pass1
# 3.
cp /etc/passwd pass2
cp /etc/passwd pass3
sed -isave 's;\(.*\):.*:\(.*\):.*:.*:\(.*\):.*;NOM = \1 UID = \2 REP = \3;' pass2
