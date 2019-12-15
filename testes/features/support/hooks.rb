Before do
    Capybara.reset_sessions!
end

After do |cenario|
    cenario_name = cenario.name.gsub(/\s+/,'_').tr('/', '_')

    if cenario.failed?
        tirar_print(cenario_name.downcase!, 'Falhou')
    else
        tirar_print(cenario_name.downcase!, 'Passou')    
    end
end