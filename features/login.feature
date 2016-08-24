Feature: Login

Scenario: Login without email
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I click button by text "próximo passo"
	Then I see item by id "email"

Scenario: Login with email invalid
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I enter text "ayrton_franca" into "email"
		And I click button by text "próximo passo"
	Then I see item by id "email"

Scenario: Login with email not registered
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I enter text "ayrton_fr@campos.com" into "email"
		And I click button by text "próximo passo"
	Then I see item by id "user_password"
	When I enter text "P@$$w0rd" into "user_password"
		And I click button by text "entrar"
	Then I see text "Email ou senha inválidos."

Scenario: Login without sem password
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I enter text "ayrton_franca@live.com" into "email"
		And I click button by text "próximo passo"
	Then I see item by id "user_password"
	When I click button by text "entrar"
	Then I see text "Email ou senha inválidos."

Scenario: Login with password invalid
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I enter text "ayrton_franca@live.com" into "email"
		And I click button by text "próximo passo"
	Then I see item by id "user_password"
	When I enter text "123456" into "user_password"
		And I click button by text "entrar"
	Then I see text "Email ou senha inválidos."

Scenario: Login Valid
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I enter text "ayrton_franca@live.com" into "email"
		And I click button by text "próximo passo"
	When I enter text "P@$$w0rd" into "user_password"
		And I click button by text "entrar"
	When I get out in site youse
	Then I checked item in main screen
	Then I wait for 05 seconds