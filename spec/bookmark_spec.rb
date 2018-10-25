require_relative "../lib/bookmark"

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("www.youtube.co.uk")
      expect(bookmarks).to include("www.google.co.uk")
    end
  end
  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com')
  
      expect(Bookmark.all).to include 'http://www.testbookmark.com'
    end
  end
end
