class CarrinhoPage < SitePrism::Page
    @carrinho = CarrinhoPage.new
    
    element :add_carrinho, :xpath, ".//span[contains(text(),'Add to cart')]"
    element :prosseguir, :xpath, ".//a[@title='Proceed to checkout']"
    
    def add_camisa_carrinho
        add_carrinho.click
        prosseguir.click
    end
end    