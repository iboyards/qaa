require 'rails_helper'

feature 'User sign out', %q{  
  As a registred user
  I want be able to sign out apps
} do

  given(:user) {create(:user)}

  scenario 'User sign out' do    
    sign_in(user)     
    click_on 'Sign out'
    save_and_open_page      
    expect(page).to have_content 'Signed out successfully.'   
  end

end