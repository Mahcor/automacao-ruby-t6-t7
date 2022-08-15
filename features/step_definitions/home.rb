Dado('que eu acesse a home page do projeto Qa.Coders') do
    home.load
end

Então('devo visualizar a informação {string}') do |titleHomePage|
    home.validate_text_homePage(titleHomePage)
end

Quando('clico no menu {string}') do |sobre_nos| 
    home.click_link(sobre_nos)
    sleep 2
end

Então('devo verificar a informação {string}') do |verifica_sobre_nos|
    home.validate_text_menu_sobreNos(verifica_sobre_nos)
    sleep 2
end

Quando('clicoo no menu {string}') do |depoimentos| 
    home.click_link(depoimentos) 
    sleep 2
end
Então('devo verificarr a informação {string}') do |verifica_depoimentos|
    home.validate_text_menu_depoimentos(verifica_depoimentos)
end

Quando('clicooo no menu {string}') do |parceiros|
    home.click_link(parceiros) 
    sleep 2
end
Então('devo verificarrr a informação {string}') do |verifica_parceiros|
    home.validate_text_menu_parceiros(verifica_parceiros)
end

Quando('clicoooo no menu {string}') do |faleConosco| 
    home.click_link(faleConosco) 
     sleep 2
end
Então('devo verificarrrr a informação {string}') do |verifica_faleConosco|
    home.validate_text_menu_faleConosco(verifica_faleConosco)
end