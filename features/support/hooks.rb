Before do |scenario|
    Capybara.current_session.driver.manager.delete_all_cookies
    page.driver.quit
END

After do |scenario|
    scenario_name = scenario.name.gsub(/s+/, '_').tr('/', '_')

    if scenario.failed?
        print_screen(scenario_name.downcase!, 'Failed')
   else
        print_screnn(scenario_name.downcase!, 'Success')
   end
end