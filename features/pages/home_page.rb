class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL
    
    element :btn_Sobre_Nos, '//a[contains(text(), "Sobre nós")]'
    element :btn_Depoimentos, '//a[contains(text(), "Depoimentos")]'
    element :btn_Parceiros, '//a[contains(text(), "Parceiros")]'
    element :btn_Fale_Conosco, '//a[contains(text(), "Fale Conosco")]'

    set_url '/'
    
    def validate_text_homePage(titleHomePage)
        el_title_HomePage = find('div[class="title"]')
      
        if el_title_HomePage.text.eql?(titleHomePage) != true
            raise "Expect element: #{titleHomePage}, but returned: #{el_title_HomePage.text}"
        end
    end
end

def click_button(sobre_nos)
    binding.pry
    find(btn_Sobre_Nos'//a[contains(text(), ${sobre_nos}]')


    btn_Sobre_Nos.click()
end
