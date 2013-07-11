Given /I click_on "(.*)" "(.*)"/ do |value, type|
  steps %Q{
	  And I wait until "#{value}" "#{type}" renders
  }
  @driver.find_element(type.to_sym => value).click
end

Given /^I am on the (.+)/ do |page_name|
  @driver.get(path_to(page_name))
end

Given /I fill in "(.*)" with "(.*)"/ do |how, what|
  if (@driver.find_elements(:id, how).count >= 1 ) then
    @driver.find_element(:id, how).clear
    @driver.find_element(:id, how).send_keys(what)
  elsif (@driver.find_elements(:class, how).count >=1) then
    @driver.find_element(:class, how).clear
    @driver.find_element(:class, how).send_keys(what)
  end
end

Given /I xpath "(.*)" "(.*)"/ do |what, how|
  steps %Q{
	  * I wait for "#{what}" "#{how}" to render
  }
  @driver.find_element(:xpath, ".//" + how + "[text()='" + what + "']").click
end

When /I wait for "(.*)" "(.*)" to render/ do |what, how|
  start_time = Time.now.to_i
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until {
    element = @driver.find_element(:xpath, ".//" + how + "[text()='" + what + "']")
    element if element.displayed?
  }
  end_time = Time.now.to_i - start_time
  puts (end_time.to_s + " seconds to render " + what.inspect + how.to_sym.inspect)
end

Given /^I follow "(.*)"$/ do |what|
  sleep 1
    @driver.find_element(:link_text, what).click
end

Given /I wait "(.*)"/ do |seconds|
 sleep seconds.to_i
end

Given /I should (NOT )?see "(.*)"/ do |visibility, what|
  what = what.to_s.strip
  result = @driver.find_elements(:xpath, "//*[text()='" + what + "']")
  if (visibility.to_s.strip == 'NOT') then
    result.count.should == 0
  else
    result.count.should >= 1
  end
end

Given /I take a screenshot and store it/ do
  file_path = File.expand_path(File.dirname(__FILE__)) + File::SEPARATOR + File.join("..", "screenshots", File::SEPARATOR)
  @driver.save_screenshot(file_path + "#{Time.now.strftime("%m_%d_%Y_%H_%M")}" + ".png")
end

Given /I should be on "(.*)"/ do |url|
   url = @driver.current_url
   url.should == url
end

When /I wait until "(.*)" "(.*)" renders/ do |value, type|
  start_time = Time.now.to_i
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  wait.until {
    element = @driver.find_element(type.to_sym => value )
    element if element.displayed?
  }
  end_time = Time.now.to_i - start_time
  puts (end_time.to_s + " seconds to render " + value.inspect + type.to_sym.inspect)
end

Given /I mouseover "(.*)"/ do |value|
  el = @driver.find_element(:class, value)
  @driver.action.move_to(el).perform
end
