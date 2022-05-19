#language: pt

Funcionalidade: Conteúdos
    Serão executados testes que permitam pesquisa utilizando o Enter em vez de clicar pesquisar e  Validar se a mensagem de Nenhum resultado quando utilizamos caracteres invalidos.

     Contexto: Acesso e clique na lupa 
            Dado que eu entre no blog do Agi
            Quando clico na lupa de pesquisa
    @happy
    Cenario: Tentar pesquisar utilizando o Enter em vez de clicar pesquisar
        
            E busco por 'investimentos' utilizando o botão Enter para pesquisar
        Então valido se fui direcionado  para outra pagina


    @fail
    Cenario: Validar se a mensagem de 'Nenhum resultado' é apresentado utilizando caracteres ou com emojis.
       
         
            E insiro os caracteres especiais  
        Então valido se a mensagem de Nenhum resultado é apresentado na pagina

