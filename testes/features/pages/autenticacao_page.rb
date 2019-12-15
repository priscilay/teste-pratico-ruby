class AutenticacaoPage < SitePrism::Page
    
    element :email, :xpath, ".//input[@name='email_create']"
    element :criarconta, :xpath, ".//button[@id='SubmitCreate']"
    
    def autenticarEmail
        email.set(Faker::Internet.email)
        criarconta.click
    end
end    