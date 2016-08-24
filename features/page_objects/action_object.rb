require 'capybara'
require 'capybara/rspec'
include Capybara::DSL

class ActionPage
	def self.pressHref(text)
		text.split("|").each do |field|		
			page.find(:xpath, "//a[@href='#{field.strip}']").click
		end
	end

	def self.insertText(text, identification)
		fill_in(identification, :with => text)
	end

	def self.buttonText(text)
		text.split("|").each do |field|
			click_button(field.strip)
		end
	end

	def self.clickId(text)
		text.split("|").each do |field|
			page.find(:id, field.strip).click
		end
	end

	def self.itemText(text)
		text.split("|").each do |field|
			page.find(field.strip).click
		end
	end

	def self.selItem(text, identification)
		select text, :from => identification
	end

	def self.selectText(text)
		text.split("|").each do |field|
			page.find(field.strip).click
		end
	end
end