#language:pt


Funcionalidade: Realizar um teste E2E no teste da Submarino, buscando um item e validando ele no carrinho de compras
    Como Clinte da Submarino
    Eu quero buscar um item no site e adicionar no carrinho de compras
    Para que eu possa finalizar minha aquisição

    Contexto: Compras no Submarino
     Dado que estou no site da Submarino

    @adicionar
    Cenário: Buscar item de compra e adicionar no carrinho
     Quando eu pesquiso pelo item "Console Playstation 4"
     E verifico se a minha busca retornou o item desejado 
     E adiciono ao carrinho
     Então devo verificar quantos itens meu carrinho possui

    @inexistente
    Cenário: Validar a busca por um item inexistente
     Quando eu pesquiso pelo item inexistente "ertdgfrs"
     Então a mensagem "Não encontramos nenhum resultado na sua busca." deverá aparecer em tela.

    @vazio
    Cenário: Validar que o carrinho está vazio
     Quando eu clicar no carrinho sem nenhum item
     Então a mensagem "Seu carrinho está vazio" deverá ser apresentada.
     
   
