require 'capybara'
require 'capybara/rspec'

Then(/^I wait for (\d+) seconds?$/) do |sec|
  ThenPage.time(sec)
end

Then(/^I see item by href "([^\"]*)"$/) do |text|
	ThenPage.checkXpath(text)
end

Then(/^I see item by id "([^\"]*)"$/) do |text|
	ThenPage.checkId(text)
end

Then(/^I see text "([^\"]*)"$/) do |text|
	text.split("|").each do |field|
		expect(page).to have_content field.strip
	end
end

