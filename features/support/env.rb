

capybara.register_driver :selenium do |app|
	capybara::Selenium::Driver.new(app, :browser => :chrome)
end

capybara.default_driver = :selenium

capybara.default_max_wait_time = 15

capybara.page.driver.browser.manage.window.maximize
