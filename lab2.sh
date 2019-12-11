#!/bin/bash

# 1.
test -e rep1 || (mkdir -p rep1/{f1,f2,f3}; cd rep1; ls -l)
# 2.
test -e rep2 || (mkdir -p rep2/{fic1.txt,fic2.txt,fic3.txt}; chmod o=r rep2/{fic1,fic2,fic3}.txt)
# 3.
echo Premier argument fichier : $1
echo Deuxième argument répertoire : $2
echo Troisième argument suffixe : $3

cp $1 $2/$1$3
chmod u=r $2/$1$3
# 4.
echo -e "Fichier : \c"
read fic
echo -e "Répertoire : \c"
read rep
echo -e "Suffixe : \c"
read suf

cp $fic $rep/$fic$suf
chmod u=r $rep/$fic$suf
# 5.
# cop
echo Premier argument fichier : $1
echo Deuxième argument répertoire : $2
echo Troisième argument suffixe : $3

cp $1 $2/${1##*/}$3
chmod u=r $2/${1##*/}$3
# dup
echo -e "Fichier : \c"
read fic
echo -e "Répertoire : \c"
read rep
echo -e "Suffixe : \c"
read suf

cp $fic $rep/${fic##*/}$suf
chmod u=r $rep/${fic##*/}$suf
# 6.
for true
do
	if [ -z "$ville" ]
	then
		echo "Paris"
		set ville "Paris"

	else
		echo -e "Ville :\c"
		read ville

	fi
done
# ou
ville=""
echo ${ville:-Paris}
echo ${ville:=Lyon}
# 7.
shopt -s nocaseglob
shopt -u nocaseglob
# 8.
echo -e "******************\n* Bonjour $LOGNAME *\n* Il est $(date +%Hh%M) *\n******************"





