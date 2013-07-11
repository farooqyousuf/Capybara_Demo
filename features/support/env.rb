require 'rubygems'
require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'faker'

Before do
  @driver = Selenium::WebDriver.for :chrome
  @domain = "http://moduscreate.com/"
end

After do |scenario|
  # @driver.quit
end