require 'capybara'
require 'capybara/rspec'
include Capybara::DSL

class ThenPage
	def self.time(sec)
		sleep(sec.to_i)	
	end

	def self.checkXpath(text)
		text.split("|").each do |field|
			page.find(:xpath, "//a[@href='#{field.strip}']")
		end
	end

	def self.checkId(text)
		text.split("|").each do |field|
			page.find(:id, field.strip)
		end
	end

	def self.checkText(text)
		text.split("|").each do |field|
			page.find(field.strip)
		end
	end
end