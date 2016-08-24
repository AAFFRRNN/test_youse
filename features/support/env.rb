require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rubygems'
require 'bundler/setup'

Capybara.default_driver = :selenium
Capybara.default_wait_time = 20
Capybara.javascript_driver = :webkit
Capybara.default_selector = :css