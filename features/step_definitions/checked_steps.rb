require 'capybara'
require 'capybara/rspec'

Then(/^I checked item in main screen$/) do
	steps %{
		Then I see item by href "/account| #quem-somos| #produtos| #porque-ser-um-youser"
	}
end

Then(/^I checked item in register screen$/) do
	steps %{
		Then I see item by id "user_name| user_email| user_password| user_password_confirmation"
	}
end