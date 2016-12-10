require 'rails_helper'

feature 'User sign out', %q{  
  As a registred user
  I want be able to sign out apps
} do

  given(:user) {create(:user)}

  scenario 'User sign out' do    
    sign_in(user)
    save_and_open_page

    #expect(page).to have_content 'Signed in successfully.'     
    #expect(current_path).to eq root_path
  end

  
end