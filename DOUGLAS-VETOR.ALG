Algoritmo "Avalia��o-Douglas-vetor"
// Disciplina   : [fundamento da programa��o]
// Professor    : Ivan Paulino
// Descri��o    : Programa para gerenciar uma agenda de contatos
// Autor(a)     : David
// Data atual   : 25/06/2024

Var
   // Se��o de Declara��es das vari�veis
   nome : vetor [1..20] de caractere
   telefone : vetor [1..20] de caractere
   opcao, totalcontatos, i : inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   totalcontatos := 0 // Inicializa o contador de contatos

   repita
      // Menu de op��es
      escreval()
      escreval("||| Menu |||")
      escreval("1 - Adicionar Contato")
      escreval("2 - Exibir Contatos")
      escreval("3 - Sair do App")
      escreval("Escolha uma op��o:")
      escreval()
      leia(opcao)

      // Executa a��o baseada na op��o escolhida
      escolha opcao
         caso 1:
            se totalcontatos < 20 entao
               totalcontatos := totalcontatos + 1
               escreval("Digite o nome do contato:")
               leia(nome[totalcontatos])
               escreval("Digite o n�mero de telefone:")
               leia(telefone[totalcontatos])
               escreval("Contato salvo com sucesso!")
            senao
               escreval("Agenda cheia!")
         caso 2:
            se totalcontatos = 0 entao
               escreval("Nenhum contato na agenda.")
            senao
               escreval("== Contatos ==")
               para i de 1 ate totalcontatos faca
                  escreval(i, "- Nome: ", nome[i], ", Telefone: ", telefone[i])
            fimpara
         caso 3:
            escreval("Saindo da agenda...")
         senao
            escreval("Op��o inv�lida! Tente novamente.")
      fimescolha

   ate opcao = 3

Fimalgoritmo



