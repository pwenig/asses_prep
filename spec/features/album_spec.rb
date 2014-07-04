require 'spec_helper'

feature 'Albums' do

  scenario 'User can create a list of albums' do
    create_user
    visit '/'
    click_on 'Register/Login'
    click_on 'Login'
    fill_in 'name', with: "Keith Richards"
    fill_in 'password', with: "Stones8"
    click_on 'Submit'

    click_on 'Add Albums'
    fill_in 'album[title]', with: "Beggars Banquet"
    fill_in 'album[artist]', with: "Rolling Stones"
    click_on 'Submit'

    expect(page).to have_content "Beggars Banquet"
  end

  scenario 'User can edit an album listing' do
    create_user
    visit '/'
    click_on 'Register/Login'
    click_on 'Login'
    fill_in 'name', with: "Keith Richards"
    fill_in 'password', with: "Stones8"
    click_on 'Submit'

    click_on 'Add Albums'
    fill_in 'album[title]', with: "Beggars Banquet"
    fill_in 'album[artist]', with: "Rolling Stones"
    click_on 'Submit'

    click_on "Beggars Banquet"
    click_on "Beggars Banquet"
    fill_in 'album[title]', with: "Dark Side of the Moon"
    fill_in 'album[artist]', with: "Pink Floyd"
    click_on 'Submit'

    expect(page).to have_content "Dark Side of the Moon"
  end

  scenario 'User can delete an album listing' do
    create_user
    create_album
    visit '/'
    click_on 'Register/Login'
    click_on 'Login'
    fill_in 'name', with: "Keith Richards"
    fill_in 'password', with: "Stones8"
    click_on 'Submit'
    click_on 'View Albums'
    click_on "Beggars Banquet"
    click_on "Beggars Banquet"

    click_on 'Delete'

    expect(page).to_not have_content "Beggars Banquet"

  end
end