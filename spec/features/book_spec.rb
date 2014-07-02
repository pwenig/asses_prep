require 'spec_helper'

feature 'Books' do
  scenario 'User can create a list of books' do
    create_user
    visit '/'
    click_on 'Register/Login'
    click_on 'Login'
    fill_in 'name', with: "Keith Richards"
    fill_in 'password', with: "Stones8"
    click_on 'Submit'

    click_on 'Add Books'

    fill_in 'book[name]', with: "The Road"
    fill_in 'book[author]', with: "Cormack McCarthy"
    click_on 'Submit'
    expect(page).to have_content "The Road"
  end
end
