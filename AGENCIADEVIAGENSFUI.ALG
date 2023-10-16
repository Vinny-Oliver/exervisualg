Algoritmo "AgenciaDeViagensFui" // Nome do algoritmo

Var // Procedimento para armazenar valores de uma variável para posteriomente chamar a declaração
   cliente: vetor [1..3] de caractere  // Vetor para armazenar nome dos clientes (3 clientes)
   destino: vetor [1..3] de caractere  // Vetor para armazenar o destino dos clientes (3 clientes)
   cont, opcao: inteiro // Variaveis de controle (contador e opção do menu)

Procedimento CadastrarCliente() // Procedimento para cadastrar um cliente
Inicio  // inicio do codigo do procedimento cadastrarCliente
   escreva ("Nome do cliente: ") // Solicita o nome do cliente ao usuário
   leia (cliente[cont]) // Lê o nome do cliente e armazena no vetor

   escreva ("Destino do cliente: ") //Solicita o destino do cliente ao usuário
   leia (destino[cont]) // Lê o destino do cliente e armazena no vetor

   escreval ("Cliente ", cliente[cont], " cadastrado com sucesso para o destino ", destino[cont]) //Exibe o nome do cliente e o destino com uma mensagem de confirmação
FimProcedimento // Fim do procedimento cadastrarCliente

Procedimento ConsultarClientes() //Procedimento para listrar clientes cadastrados
Inicio // Inicio do codigo do procedimento consultarClientes
   escreval ("=== LISTA DE CLIENTES CADASTRADOS ===") // Exibe a mensagem
   para cont de 1 ate 3 faca
      se cliente[cont] <> "" entao // Verifica se o vetor não está vazio
         escreval ("Nome: ", cliente[cont]) //Exibe o nome do cliente
         escreval ("Destino: ", destino[cont]) // Exibe o destino do cliente
         escreval ("---------------------------")
      fimse // Encerra a condição do bloco
   fimpara // Encerra a contagem do vetor deste bloco
FimProcedimento // Fim do procedimento consultarClientes

Procedimento ConsultarDestinos() // Procedimento para listar destinos cadastrados
Inicio //Inicio do procedimento consultarDestinos
   escreval ("=== LISTA DE DESTINOS CADASTRADOS ===") // Exibe a mensagem
   para cont de 1 ate 3 faca
      se destino[cont] <> "" entao // Verifica se o vetor de destino não está vazio
         escreval ("Cliente: ", cliente[cont]) // Exibe o nome do cliente associado ao destino
         escreval ("Destino: ", destino[cont]) // Exibe o destino
         escreval ("---------------------------")
      fimse // Encerra a condição do bloco
   fimpara // Enderra a contagem do vetor deste bloco
FimProcedimento // Fim do procedimento consultarDestino

Inicio
   cont <- 1 // Inicializa a variavel de controle contador e opção do menu

   escreval ("=== CADASTRO DE CLIENTES ===") // Exibe mensagem
   para cont de 1 ate 3 faca // Inicio da contagem
      CadastrarCliente() // Chama o procedimento para cadastrar clientes
   fimpara // Fim da contagem

   repita // Inicio da estrutura repita
      escreval ("=== MENU ===")
      escreval ("(1) - Consultar clientes cadastrados")
      escreval ("(2) - Consultar destino dos clientes cadastrados")
      escreval ("(0) - Sair")
      escreval ("Escolha uma opção: ")
      leia (opcao) // Lê a escolha do usuário

      escolha opcao // Inicio da estrutura "escolha" baseada na escolha do usuário
      caso 1
         ConsultarClientes() // Chama o procedimento para listar clientes
      caso 2
         ConsultarDestinos() // Chama o procedimento para listar destinos
      caso 0
         escreval ("------------------------------------------------------------")
         escreval ("Saindo do programa...") // Exibe mensagem de saída
      outrocaso // Início da estrutura "outrocaso" (quando a opção não é 1, 2 ou 0)
         escreval ("Opção inválida. Tente novamente.") // Exibe mensagem de opção inválida
      fimescolha // Fim da estrutura escolha
   ate opcao = 0 // Continua o loop até a opção 0 (Sair) ser escolhida
Fimalgoritmo // Fim de toda a estrutura.
