class CamisaPage < SitePrism::Page
    @camisa = CamisaPage.new
    
    element :categ_camisa, :xpath, ".//a[@title= 'T-shirts']"
    
    def clicar_categ_camisa
        categ_camisa.click
    end
end    

