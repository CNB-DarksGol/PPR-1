#!/bin/bash
#Autor:Caique		
#Data de Criação: 27/02/2017
#############################

clear

echo "Digite o primeiro numero"
read nmr1
echo "digite o segundo numero"
read nmr2

if (( $nmr1 > $nmr2 )) ;then

       result=$nmr2
	
while (( $result < $nmr1 )) ;do

	if (( $result%2 ==1 )) ;then
	echo " esse numero é impar. $result"
	fi
	let result=($result + 1 )
	done

else
     result=$nmr1

   while (( $result < $nmr2 )) ;do

	if (( $result%2 ==1 )) ;then
	echo " esse numero é impar. $result"
	fi
	let result=($result + 1 )
        done
fi
