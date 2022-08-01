Dado('que eu acesse a home page do projeto Qa.Coders') do
    home.load
end

Então('devo visualizar a informação {string}') do |titleHomePage|
    home.validate_text_homePage(titleHomePage)
end

# # Item 1 do Menu
Quando('clico no menu {string}') do |sobre_nos| #Aqui crio a variável referente à String que vem da Home Page
    home.click_link(sobre_nos) # Aqui recebo a variável da String
    sleep 5
end

Então('devo verificar a informação {string}') do |verifica_sobre_nos|
    home.validate_text_menu_sobreNos(verifica_sobre_nos)
    sleep 5
end

# # Item 2 do Menu
Quando('clicoo no menu {string}') do |depoimentos| #Aqui crio a variável referente à String que vem da Home Page
    home.click_link(depoimentos) # Aqui recebo a variável da String
    sleep 5
end
Então('devo verificarr a informação {string}') do |verifica_depoimentos|
    home.validate_text_menu_depoimentos(verifica_depoimentos)
end

# # Item 3 do Menu
Quando('clicooo no menu {string}') do |parceiros| #Aqui crio a variável referente à String que vem da Home Page
    home.click_link(parceiros) # Aqui recebo a variável da String
    sleep 5
end
Então('devo verificarrr a informação {string}') do |verifica_parceiros|
    home.validate_text_menu_parceiros(verifica_parceiros)
end

# # Item 4 do Menu
Quando('clicoooo no menu {string}') do |faleConosco| #Aqui crio a variável referente à String que vem da Home Page
    home.click_link(faleConosco) # Aqui recebo a variável da String
    sleep 5
end
Então('devo verificarrrr a informação {string}') do |verifica_faleConosco|
    home.validate_text_menu_faleConosco(verifica_faleConosco)
end