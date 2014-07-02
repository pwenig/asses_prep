require 'spec_helper'

feature "Users" do

  scenario "User visits index and registers" do
    visit '/'
    expect(page).to have_content "Welcome"
  end
end