#!/bin/bash
# Autor: Vinicius Apas Ibrahim
# Criação: 21/02/2017
# Exercícios (1 ao 5)
clear


#Funcoes

Exercicio1(){
clear

if (( $j == 1)) ; then

echo "Digite um número:"
read y
echo "Digite outro número:"
read x
echo " Agora vamos ver quais os números impares dentre o intervalo dos números digitos:"
sleep 1
echo "Tecle [ENTER] para prosseguir!"
read kkk


if (( $y >= $x )) ; then

cont=$x

	while (( $cont <= $y )); do

	   if (( $cont%2 == 1 )) ; then
     		 echo "Números impares:" $cont
   	   fi
	
let cont=($cont + 1)

done


else   

##(( $x >= $y )) ; then

cont=$y

   	while (( $cont <= $x )) ; do

     	 if (( $cont%2 == 1 )) ; then
         echo "Números impares:" $cont
     	 fi

   	let cont=($cont + 1)

	
   done

fi



echo " Tecle [ENTER] para voltar ao menu."
read sss
clear
fi
}


#########################



Exercicio2(){
clear

if (( $j == 2)) ; then

y="1"
num="0"

echo "Escreva a quantidade de números que deseja digitar:"
read x
clear

 while (( $y <= $x )) ; do
 
   echo " Digite um número:"
   read cont

      if (( $cont > $num )) ; then
         num=$cont

      fi

     let y=($y + 1)
done

echo "O maior número digitado dentre a quantidade escolhida foi:" $num
echo
echo
echo " Tecle [ENTER] para voltar ao menu."
read sss
clear
fi
}


Exercicio3(){
clear

if (( $j == 3)) ; then

op="3"

while (( $op != 0 )) ; do

echo "Escolha uma das opções:"
echo "1) Veja e faça o reajuste do seu salário."
echo "0) Sair."
read op
clear


   if (( $op == 1 )) ; then
      echo "Digite o seu salário:"
      read salario
         	if (( $salario  <= 500 )) ; then

			salario=$(echo	"scale=2; $salario*1.20" | bc)
            		echo "Seu novo salário com ajuste de 20% é:" $salario
         	
		else 
		
               		
			salario=$(echo	"scale=2; $salario*1.10" | bc)
                	echo "Seu novo salário com ajuste de 10% é:" $salario
        	 fi

   fi

   done

fi
}



Exercicio4(){
clear

if (( $j == 4)) ; then

num="1000000"

echo " Digite um número:"
read x

while (( $x != 0 )) ; do

      if (( $x < $num )) ; then
      num=$x
      cont=0
      fi
     
      if (( $x == $num )) ; then
     	let cont=($cont + 1)
      fi
echo "Digite um número:"
read x
done
echo "O menor valor lido foi: $num " 
echo "E ele foi digirado,  $cont vezes!" 
echo
echo " Tecle [ENTER] para voltar ao menu."
read ss
clear
fi
}



Exercicio5(){
clear

if (( $j == 5)) ; then

salario="1"
maior="0"
meio="0"
menor="0"

while (( $salario != 0 )) ; do

   echo "Olá digite o seu salário:"
   read salario

   if (( $salario > $maior )) ; then
       if (( $salario > $meio)) ; then
           if (( $salario > $menor )); then
   meio=$maior
   maior=$salario
            fi
       fi
   fi
        
   if (( $salario < $maior )) ; then
       if (( $salario > $meio)) ; then
          if (( $salario > $menor )) ; then
			
   menor=$meio
   meio=$salario

   fi
   fi
   fi
   
      if  (( $salario > $menor )) ; then
      if (( $salario < $meio )) ; then
	if (( $salario < $maior )) ; then
      
      
		
      menor=$salario
            
      fi
      fi
      fi

done
	echo "O terceiro maior salário lido foi:" $menor
        echo "O segundo maior salário lido foi:" $meio
        echo "O maior salário lido foi:" $maior
	echo " Tecle [ENTER] para voltar ao menu."
	read ss
	clear
fi
}





######################

j="10"

while (( $j != 7)) ; do

echo "Seja bem-vindo ao menu de exercícios."
sleep 1
clear

echo "1) Execício 1"
echo "2) Execício 2"
echo "3) Execício 3"
echo "4) Execício 4"
echo "5) Execício 5"
echo "7) Sair"
read j


Exercicio1;
Exercicio2;
Exercicio3;
Exercicio4;
Exercicio5;
