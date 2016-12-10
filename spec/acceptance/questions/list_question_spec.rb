require 'rails_helper'

feature 'List of questions', %q{
  In order to do not repeat questions
  As a user
  I want to saw list of questions
} do
  scenario 'User can view a list of questions' do
    User.create!
    questions = FactoryGirl.create_list(:list_of_question,2)
    visit questions_path 
    questions.each do |question|  
      expect(page).to have_content question.title  
    end 
  end
end