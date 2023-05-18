Algoritmo "alturas."
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/05/2023
Var
menora, maiora, media, soma : real

n,i,contMULHERES,totalHOMENS : inteiro

altura : vetor[0..99] de real
 genero : vetor[0..99] de caractere


Inicio

     escreva ("Quantas Pessoas serão registradas? ")
     leia(n)
     
     
     para i de 0 ate n-1 faca
         escreva ("Digite a altura da ", i+1 , "a Pessoa: ")
         leia(altura[i])
         escreva ("Digite o genero da ", i+1, "a Pessoa: ")
         leia(genero[i])
     fimpara
         menora <- altura[0]
         maiora <- altura[0]
         
         para i de 1 ate n-1 faca
            se altura[i] > maiora entao
            maiora <- altura[i]
            fimse

            se altura[i] < menora entao
            menora <- altura[i]
            fimse
         fimpara
         
        escreval ("MENOR ALTURA = ", menora:4:2)
        escreval ("MAIOR ALTURA = ",maiora:4:2)
        
        media <- 0
        contMULHERES <- 0
        soma <- 0
        para i de 0 ate n-1 faca
           se genero[i] = "f" entao
           soma <- soma + altura[i]
         contMULHERES <- contMULHERES + 1
          media <- soma  / contMULHERES
           fimse
        fimpara
       escreval ("Média das mulheres = ", media:4:2)
       
       totalHOMENS <- 0
       
       para i de 0 ate n-1 faca
         se genero[i] = "m" entao
         totalHOMENS <- totalHOMENS + 1
         fimse
       fimpara
        escreval ("TOTAL DE HOMENS = ", totalHOMENS)
Fimalgoritmo