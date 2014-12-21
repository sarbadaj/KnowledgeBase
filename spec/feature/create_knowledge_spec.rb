require 'rails_helper'
feature "creating a new knowledge base document", :js => true do
  scenario "create new knowledge" do
    visit '/'
    click_button 'Knowledge'
    binding.pry
  end 
end