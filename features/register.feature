Feature: Register

Scenario: Without data
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I wait for 10 seconds
	Then I see item by id "email"
	When I press item by href "/users/sign_up"
	Then I checked item in register screen
	When I click button by text "enviar cadastro"
	Then I see text "não pode ficar em branco"
		And I checked item in register screen

Scenario: Without name
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I press item by href "/users/sign_up"
	Then I checked item in register screen
	When I enter text "test@gmail.com" into "user_email"
		And I enter text "892305" into "user_password"
		And I enter text "892305" into "user_password_confirmation"
	When I click button by text "enviar cadastro"
	Then I see text "não pode ficar em branco"
		And I checked item in register screen

Scenario: Without email
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I press item by href "/users/sign_up"
	Then I checked item in register screen
	When I enter text "Teste" into "user_name"
		And I enter text "892305" into "user_password"
		And I enter text "892305" into "user_password_confirmation"
	When I click button by text "enviar cadastro"
	Then I see text "não pode ficar em branco"
		And I checked item in register screen

Scenario: Without password
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I press item by href "/users/sign_up"
	Then I checked item in register screen
	When I enter text "Teste" into "user_name"
		And I enter text "teste@gmail.com" into "user_email"
		And I enter text "892305" into "user_password_confirmation"
	When I click button by text "enviar cadastro"
	Then I see text "não pode ficar em branco"
		And I checked item in register screen

Scenario: Without confirm password
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I press item by href "/users/sign_up"
	Then I checked item in register screen
	When I enter text "Teste" into "user_name"
		And I enter text "teste@gmail.com" into "user_email"
		And I enter text "892305" into "user_password"
	When I click button by text "enviar cadastro"
	Then I checked item in register screen

Scenario: With email invalid
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I press item by href "/users/sign_up"
	Then I checked item in register screen
	When I enter text "Teste" into "user_name"
		And I enter text "teste" into "user_email"
		And I enter text "892305" into "user_password"
		And I enter text "892305" into "user_password_confirmation"
	When I click button by text "enviar cadastro"
	Then I checked item in register screen

Scenario: With email already registered
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I press item by href "/users/sign_up"
	Then I checked item in register screen
	When I enter text "Teste" into "user_name"
		And I enter text "ayrton_franca@live.com" into "user_email"
		And I enter text "892305" into "user_password"
		And I enter text "892305" into "user_password_confirmation"
	When I click button by text "enviar cadastro"
	Then I see text "já está em uso"
	Then I checked item in register screen

Scenario: With password different confirm passwod
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I press item by href "/users/sign_up"
	Then I checked item in register screen
	When I enter text "Teste" into "user_name"
		And I enter text "teste_01@gmail.com" into "user_email"
		And I enter text "123456789" into "user_password"
		And I enter text "987654321" into "user_password_confirmation"
	When I click button by text "enviar cadastro"
	Then I see text "não é igual a Senha"
		And I checked item in register screen

Scenario: Password with 4 characters
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I press item by href "/users/sign_up"
	Then I checked item in register screen
	When I enter text "Teste" into "user_name"
		And I enter text "teste_01@gmail.com" into "user_email"
		And I enter text "123456789" into "user_password"
		And I enter text "987654321" into "user_password_confirmation"
	When I click button by text "enviar cadastro"
	Then I checked item in register screen

Scenario: Register user valid and login
	Given I am on the site "https://www.youse.com.br/"
	Then I checked item in main screen
	When I press item by href "/account"
	Then I see item by id "email"
	When I press item by href "/users/sign_up"
	Then I checked item in register screen
	When I enter text "Teste" into "user_name"
		And I enter text "teste_10@gmail.com" into "user_email"
		And I enter text "123456789" into "user_password"
		And I enter text "123456789" into "user_password_confirmation"
	When I click button by text "enviar cadastro"
	Then I see text "Bem vindo! Você realizou seu registro com sucesso."