#!/bin/bash

# 1.
for dir in $(ls -a .)
do
	if [ -d $dir ]
	then 
		ls -ld $dir
	fi
done
# 2.
typeset -i i=1

while let "i<=$2"
do
	echo -e "Question permettant de valider ou d'invalider la création du fichier $1.$i : \c"
	
	read Question
	
	if [ "$Question" = "o" ]
	then
		>$1.$i
	fi

	((i=i+1))	
done
# 3.
echo Choisissez votre commande

PS3="Votre choix :"

select commande in pwd ls date ps quitter
do
	case $commande in
		pwd)	echo Votre répertoire est :
			pwd;;
	ls)	echo Voici le contenu de votre répertoire :
		ls -CF;;
	date) 	echo Vous avez demandé la date :
		date;;
	ps) 	echo Voici les processus en cours :
		ps -aef | more;;
	quitter) 	echo o-o-o-o-o Au revoir ! O-o-o-o-o
			break;;
	esac
exec $0
done
