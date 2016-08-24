require 'capybara'
require 'capybara/rspec'

When(/^I press item by href "([^\"]*)"$/) do |text|
	ActionPage.pressHref(text)
end

When(/^I enter text "([^\"]*)" into "([^\"]*)"$/) do |text, identification|
    ActionPage.insertText(text, identification)
end

When(/^I click button by text "([^\"]*)"$/) do |text|
	ActionPage.buttonText(text)
end

When(/^I click button by id "([^\"]*)"$/) do |text|
	ActionPage.clickId(text)
end

When(/^I click item by name "([^\"]*)"$/) do |text|
	ActionPage.itemText(text)
end

When(/^I selected item "([^\"]*)" in drop down "([^\"]*)"$/) do |text, indetification|
	ActionPage.dropItem(value, identification)
end

When(/^I selected item by name "([^\"]*)" in "([^\"]*)"$/) do |text, identification|
	ActionPage.selItem(text, identification)
end

When(/^I get out in site youse$/) do
	visit('http://www.youse.com.br/#')
end

