require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'


=begin
Capybara.register_driver :chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--width=1900')
    options.add_argument('--height=1080')
  
    Capybara::Selenium::Driver.new(app,
      browser: :chrome,
      options: options 
    )
end
=end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://automationpractice.com/index.php?'
    config.default_max_wait_time = 20 
end


