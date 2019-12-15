class EnderecoPage < SitePrism::Page
    
    element :prosseguir, :xpath, ".//button[@name='processAddress']"    
   
    def end_entrega_prosseguir
        prosseguir.click
    end
end    