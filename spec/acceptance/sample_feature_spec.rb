require_relative 'acceptance_helper'

feature "Home Page", %q{
  In order to see our awesome application
  As a common user
  I want to open it in a browser
} do
  scenario "Start application" do
    visit "/index.html"
    page.should have_content("Welcome to my html5 application!")
  end
end
