Dado('que eu acesse a home page do projeto Qa.Coders') do
    home.load
end

Então('devo visualizar a informação {string}') do |titleHomePage|
    home.validate_text_homePage(titleHomePage)
end

Quando('clico no menu {string}') do |sobre_nos| #criando a variável que será usada no click da home_page.rb - Pega do BDD
    home.click_button(sobre_nos) #Aqui é o botão onde vou clicar - Pega do BDD
end
