
#Adicionando item

Dado("que estou no site da Submarino") do
    @teste = Teste.new
    @teste.load
  end
  
  Quando("eu pesquiso pelo item {string}") do |item|
    @teste.pesquisar(item)
  end

  Quando("verifico se a minha busca retornou o item desejado") do
    real = @teste.verificar
    expect(real).to have_content "Console Playstation 4"
  end
  
  Quando("adiciono ao carrinho") do
    @teste.add
  end
  
  Então("devo verificar quantos itens meu carrinho possui") do
    qnt = @teste.carrinho
    puts "Seu carrinho possui #{qnt} item(ns)"
  end

  #Item inexistente

  Quando("eu pesquiso pelo item inexistente {string}") do |produto|
    @teste.pesquisar(produto)
  end
  
  Então("a mensagem {string} deverá aparecer em tela.") do |men|
    erro = @teste.mensagem
    expect(erro).to have_text men
  end

  #Carrindo vazio

  Quando("eu clicar no carrinho sem nenhum item") do                           
    @teste.compras
  end                                                                          
                                                                               
  Então("a mensagem {string} deverá ser apresentada.") do |vazio|             
    vr = @teste.men_vaz
    expect(vr).to have_text vazio
  end                                                                          