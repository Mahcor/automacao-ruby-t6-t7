# Automation web Ruby


Projeto de autamação web utilizando Ruby + Cucumber.

### Pré-requisitos

* [Ruby](https://rubyinstaller.org/downloads/) - Instalar a versão recomendada marcada por => da sessão <b>WITH DEVKIT</b>

* [Chromedriver] (https://chromedriver.storage.googleapis.com/index.html) - Instalar a versão correspondente à versão do Google Chrome instalada em seu computador.
-Após baixar o arquivo, descompactar e colocar na pasta C:\Windows\System32
-Adicioná-lo nas variáveis de Ambiente do Sistema em Path.

* Instalar Extensões no VSCode
- VSCode Icons
- VSCode Ruby
- Snippets and Syntax Highlight for Gherkin
- Ruby language Colarization
- RUBY
- Gherkin Indent
- Cucumber (Gherkin)

* Instalando as Dependências:
bundler install

* Criando Pastas e Arquivos necessários:
Criar pasta feature e as subpastas: "pages" e "specs"


* Criar pasta "env.rb" e incluir as linhas abaixo:

require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

ENVIRONMENT = ENV['ENVIRONMENT']
puts "ENVIRONMENT is runner >>> #{ENVIRONMENT}"

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")
World(Helper)
World(Pages)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_default']
    config.default_max_wait_time = 10
end


* Criar o arquivo "gemfile" e incluir as linhas abaixo:

source 'https://rubygems.org/'

gem 'capybara'
gem 'chromedriver-helper'
gem 'cucumber'
gem 'rspec'
gem 'selenium-webdriver'
gem 'site_prism'
gem 'pry'

* Instalar o Cucumber e inicializá-lo:
gem install cucumber
cucumber --init