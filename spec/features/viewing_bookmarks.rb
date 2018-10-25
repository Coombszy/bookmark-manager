require 'rspec'
require_relative '../spec_helper'

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
  scenario 'viewing some bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content "www.google.co.uk"
    expect(page).to have_content "www.youtube.co.uk"
    
  end
end
feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end