require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "pry"
require "site_prism"

case ENV["BROWSER"]
when "firefox"
 @driver = :selenium
when "chrome"
 @driver = :selenium_chrome
when "headless"
 @driver = :selenium_chrome_headless
else
 puts "Selecione um browser"
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.default_max_wait_time = 5
    Capybara.page.driver.browser.manage.window.maximize
    config.app_host = "https://www.submarino.com.br/"
end