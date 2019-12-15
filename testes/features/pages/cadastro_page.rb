class CadastroPage < SitePrism::Page
    
    element :titulo, '#id_gender2'
    element :nome, '#customer_firstname'
    element :sobrenome, '#customer_lastname'
    element :senha, '#passwd'
    element :diaNasc, :xpath, ".//div[@id='uniform-days']" 
    element :mesNasc, :xpath, ".//div[@id='uniform-months']"
    element :anoNasc, :xpath,".//div[@id='uniform-years']"
    element :nomeEndereco, '#firstname'
    element :sobrenomeEndereco, '#lastname'
    element :endereco, '#address1'
    element :cidade, '#city'
    element :estado, :xpath, ".//div[@id='uniform-id_state']"
    element :cep, '#postcode'
    #element :pais, '#id_country'
    element :celular, '#phone_mobile'
    element :endderecoReferencia, '#alias'
    element :texto, :xpath, ".//h3[contains(text(), 'Your address')]"
    element :textClick2, :xpath, ".//label[@for='alias']"
    element :registrar, :xpath, ".//span[contains(text(), 'Register')]"
    
    
    def initialize
        @name = Faker::Name.first_name
        @namelast = Faker::Name.last_name
    end

    def criar_cadastro
        realiza_cadastro 
    end

    private


    def realiza_cadastro
        titulo.click
        nome.set(@name)
        sobrenome.set(@namelast)
        senha.set('8545@dasa')
        texto.click
        diaNasc.select(12)
        mesNasc.select('April')
        anoNasc.select(1990)
        nomeEndereco.set(@name)
        sobrenomeEndereco.set(@namelast)
        endereco.set(Faker::Address.street_address)
        cidade.set('Dothan')
        estado.select('Alabama')
        textClick2.click
        cep.set('35762')
        #pais.select('United States')
        celular.set('218-330-0051')
        endderecoReferencia.set(Faker::Address.street_address)
        registrar.click
    end

    def espera
        has_diaNasc?
    end
end    