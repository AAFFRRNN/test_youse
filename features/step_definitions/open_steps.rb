require 'capybara'
require 'capybara/rspec'

Given(/^I am on the site "([^\"]*)"$/) do |text|
	OpenPage.open_url(text)
end

When(/^I access site "([^\"]*)"$/) do |text|
	OpenPage.open_url(text)
end