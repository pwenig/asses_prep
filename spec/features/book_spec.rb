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

    create_book

    visit '/books'

    expect(page).to have_content "Everyman"
  end

  scenario 'User can edit a book listing' do
    create_user

    visit '/'
    click_on 'Register/Login'
    click_on 'Login'
    fill_in 'name', with: "Keith Richards"
    fill_in 'password', with: "Stones8"
    click_on 'Submit'

    create_book
    visit '/books'

    click_on "Everyman"
    click_on "Everyman"

    fill_in 'book[name]', with: "The Road"
    fill_in 'book[author]', with: "Cormack McCarthy"
    click_on 'Submit'

    expect(page).to have_content "The Road"
  end
end
