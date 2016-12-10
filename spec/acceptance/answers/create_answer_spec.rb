require 'rails_helper'

feature 'New answer', %q{
  In order to create answer to question
  As a user
  I want to create new answer
} do
  scenario 'User create answer' do
  User.create!
  questions = FactoryGirl.create_list(:list_of_question,2)
  visit questions_path    
  click_on 'MyString1'      
  fill_in 'Body', with: 'text text'
  click_on 'Send'
  expect(page).to have_content 'Answer successfully created.'  
  expect(page).to have_content 'text text' 

  end

end