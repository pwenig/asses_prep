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

  scenario 'User cannot register without name' do
  visit '/'
  click_on 'Register/Login'
  fill_in 'user[password]', with: "Stones8"
  fill_in 'user[password_confirmation]', with: "Stones8"
  click_on 'Submit'
  expect(page).to have_content "All fields required"
  end

  scenario 'User can login' do
    create_user
    visit '/'
    click_on 'Register/Login'
    click_on 'Login'
    fill_in 'name', with: "Keith Richards"
    fill_in 'password', with: "Stones8"
    click_on 'Submit'
    expect(page).to have_content "Welcome, Keith Richards "
  end

  scenario 'User can logout' do
    create_user
    visit '/'
    click_on 'Register/Login'
    click_on 'Login'
    fill_in 'name', with: "Keith Richards"
    fill_in 'password', with: "Stones8"
    click_on 'Submit'
    click_on 'Logout'
    expect(page).to_not have_content "Welcome, Keith Richards"
  end
end