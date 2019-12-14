# 1.
grep ^$LOGNAME /etc/passwd
# 2.
grep  -ls 'grep' /etc/*
# 3.
grep 'Jean' modele1
# 4.
grep '[35]$' modele1
# 5.
egrep '(11|22)$' modele1
egrep '1{2}$|2{2}$' modele1
# 6.
grep '^[^D]' modele1
# 7.
grep -n '^35' modele1
# 8.
grep ':\*' test
# 9.
ls -laR | grep '^d'
# 10.
ps -A | grep 'bash'
# 11.
[ $(ps -A | grep -c 'bash') -eq 2 ] && (echo "reboot"; reboot) || echo "not found"
