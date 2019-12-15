Dado("que realizei o cadastro") do
    @inicio = InicioPage.new
    @autenticacao = AutenticacaoPage.new
    @cadastro = CadastroPage.new

    @inicio.load
    @inicio.clicarSignin
    @autenticacao.autenticarEmail
    @cadastro.criar_cadastro
    sleep(11)
end
 
Quando("eu adicionar um produto ao carrinho de compras") do
    @camisa = CamisaPage.new
    @carrinho = CarrinhoPage.new

    @camisa.clicar_categ_camisa
    @carrinho.add_camisa_carrinho
end
  
Quando("preencher dados") do
    @finaliza = FinalizarCompraPage.new
    @resumo = ResumoPage.new
    @endereco = EnderecoPage.new
    @termos = TermosPage.new
    @entrega = EntregaPage.new
    @pagamento = PagementoPage.new

    @resumo.resumo_prosseguir
    @endereco.end_entrega_prosseguir
    @termos.termos_aceitar
    @entrega.entrega_endereco
    @pagamento.pagamento_confirmacao
end
  
Entao("visualizo o texto {string}") do |texto|
   assert_text(texto)
end