require 'spec_helper'

feature 'Creating bookmarks' do
  scenario 'can add a bookmark and see it on the page' do
    visit('/bookmarks')
    fill_in('url', with: 'www.test.com')
    fill_in('title', with: 'test')
    click_button('Save')

    expect(page).to have_link('test', href: 'www.test.com')
  end
end