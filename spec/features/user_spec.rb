require 'spec_helper'

feature 'Users' do

  scenario 'Users' do
    visit '/'
    expect(page).to have_content "Welcome"
  end

  scenario 'User can register' do
    visit '/'
    click_on 'Register/Login'
    fill_in 'user[name]', with: "Mick Jagger"
    fill_in 'user[password]', with: "Stones8"
    fill_in 'user[password_confirmation]', with: "Stones8"
    click_on 'Submit'
    expect(page).to have_content "Welcome, Mick Jagger"
  end
  
end