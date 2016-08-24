require 'capybara'
require 'capybara/rspec'
include Capybara::DSL

class OpenPage
	def self.open_url(text)
		text.split("|").each do |field|
			visit field.strip
		end
	end
end 