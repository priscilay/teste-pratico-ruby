class PagementoPage < SitePrism::Page

    element :pag_transf, :xpath, ".//a[@class='bankwire']"
    element :conf_pag, :xpath, ".//span[contains(text(), 'I confirm my order')]"

    def pagamento_confirmacao
        pag_transf.click
        conf_pag.click
    end
end    