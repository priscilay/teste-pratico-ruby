class ResumoPage < SitePrism::Page
    
    element :prosseguir, :xpath, ".//p[@class='cart_navigation clearfix']//a[@title='Proceed to checkout']"
  
    def resumo_prosseguir
        prosseguir.click
    end
end    