require 'rspec'
require_relative '../spec_helper'


feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'www.sitetodelete.com', title: 'deleteme')
    visit('/bookmarks')
    expect(page).to have_link('Makers Academy', href: 'www.sitetodelete.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('deleteme', href: 'www.sitetodelete.com')
  end
end