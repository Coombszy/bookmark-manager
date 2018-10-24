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