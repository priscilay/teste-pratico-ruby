class InicioPage < SitePrism::Page
    @inicio = InicioPage.new
    set_url 'http://automationpractice.com/index.php?'
    element :signin, :xpath, ".//a[@class='login']"
    
    def clicarSignin
        signin.click
    end
end    