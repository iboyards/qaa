require 'rails_helper'

feature 'User sign up', %q{
  In order to be able to ask question
  As a user
  I want be able to sign up
} do  

  scenario 'Non-registred user try to sign up' do         
    visit root_path
    click_on 'Sign up'          
    fill_in 'Email', with: 'newuser@test.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_button 'Sign up'       
    expect(page).to have_content 'Welcome! You have signed up successfully.'        
  end

end