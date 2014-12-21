require 'rails_helper'
feature "creating a new knowledge base document", :js => true do
  scenario "create new knowledge" do
    visit '/'
    click_button 'Knowledge'
    fill_in 'Title', :with => "git details"
    fill_in 'Body', :with => "Details knowledge of git."
    click_button 'Save'
    visit '/knowledges'
  end 
end