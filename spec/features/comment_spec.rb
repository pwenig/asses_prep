require 'spec_helper'

feature Comment do

  scenario "User can create a comment for a book" do
    create_book(name: 'The Passionate Programmer')
    create_user
    visit '/'
    click_on 'Register/Login'
    click_on 'Login'
    fill_in 'name', with: "Keith Richards"
    fill_in 'password', with: "Stones8"
    click_on 'Submit'
    click_on 'View Books'
    click_on 'Add Comment'
    fill_in 'Comment', with: 'I like it!'
    click_on 'Submit'

    expect(page).to have_content 'I like it!'
    expect(page).to have_content 'Keith Richards'
  end
end