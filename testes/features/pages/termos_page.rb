class TermosPage < SitePrism::Page
     
    element :aceitar_termos, :xpath, ".//div[@id='uniform-cgv']" 
    element :clique, :xpath, ".//h4[contains(text(), 'Newsletter')]"
   
    def termos_aceitar
        clique.click
        aceitar_termos.click
    end
end    