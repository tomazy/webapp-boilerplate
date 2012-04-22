require 'spec_helper'
require 'capybara/rspec'

require File.expand_path('../../../app/application', __FILE__)
Capybara.app = Application.start_rack_app
Capybara.javascript_driver = :webkit
