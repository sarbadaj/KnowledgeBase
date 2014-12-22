require 'rails_helper'
feature "Search appropriate knowledge", :js => true do
  scenario "search appropriate knowledge" do
    visit '/'
    click_button 'Knowledge'
    fill_in 'Title', :with => "hello"
    fill_in 'Body', :with => "Details of hello."
    click_button 'Save'
    visit '/knowledges'
    fill_in 'search', :with => "hello"
    click_button 'Search'
  end
end