require 'capybara'
require 'capybara/rspec'

When(/^I perform one login valid$/) do
	steps %{
		When I press item by href "/account"
		Then I see item by id "email"
		When I enter text "ayrton_franca@live.com" into "email"
		When I click button by text "próximo passo"
		When I enter text "P@$$w0rd" into "user_password"
		When I click button by text "entrar"
	}
end