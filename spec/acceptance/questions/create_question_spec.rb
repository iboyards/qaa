require 'rails_helper'

feature 'New question', %q{
  In order to create question
  As a user
  I want to create new question
} do
  scenario 'User create question' do
  User.create!
  visit questions_path
  click_on "Ask question"
  fill_in 'Title', with: 'Test question'
  fill_in 'Body', with: 'text text'
  click_on 'Create'
  expect(page).to have_content 'Question successfully created.'  
  end

end