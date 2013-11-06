Given(/^I am on the "(.*?)"$/) do |page_name|
  puts "Environment: #{path_to(page_name)}"
  visit(path_to(page_name))
end

Given(/^I fill in the "(.*?)" textfield with "(.*?)"$/) do |how, what|
  fill_in(how, :with => what )
end

Given(/^I click on the "(.*?)" button$/) do |button|
  click_on(button)
end

Given(/^I should see the text "(.*?)"$/) do |text|
  page.should have_content(text)
end

Given(/^I click on the "(.*?)" link$/) do |link|
  click_on(link)
end

Given(/^I am on this page:$/) do
  puts current_url
end

Given(/^I should be on the "(.*?)"$/) do |page_name|
  current_url.should == path_to(page_name)
end

Given(/^I select the first element in the dropdown "(.*?)"$/) do |dropdown|
  option = find(:xpath, "//*[@id='#{dropdown}']/option[2]").text
  puts "License: #{option}"
  select(option, :from => dropdown)
end

