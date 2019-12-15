module Helper
    def tirar_print(nome_arquivo, resultado)
        caminho_arquivo = "results/screenshots/testes_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(foto)   
        embed(foto, 'image/png', 'Clique aqui')
    end
end    