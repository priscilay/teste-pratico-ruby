class EntregaPage < SitePrism::Page
    
    element :prosseguir, :xpath, ".//button[@name='processCarrier']"
  
    def entrega_endereco
        prosseguir.click
    end
end    