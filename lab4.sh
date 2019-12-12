#!/bin/bash

# 1.
if test \( -f $1 -a -r $1 \)  
	then echo "$1 est un fichier en lecture"
else 
	echo "$1 n'est pas un fichier en lecutre"
fi
# 2.
test -f $1 && test -r $1 && echo "$1 est un fichier en lecture" || echo "$1 n'est pas un fichier en lecutre"
# 3.
#!/bin/bash

if [ $# -ne 2 ] 
	then echo "commande : tri fichier1 fichier2"
else 
	echo -e "Ligne sur l’entrée standard : \c"
	
	read ligne

	case "$ligne" in
		*[a-zA-Z]* ) echo "$ligne" >> $1 ;;
		*[0-9][^a-zA-Z]* ) echo "$ligne" >> $2 ;;
		* ) 2>/dev/null ;;
	esac
fi
# 4.
