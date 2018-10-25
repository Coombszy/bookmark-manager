require_relative "../lib/bookmark"

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("www.youtube.co.uk")
      expect(bookmarks).to include("www.google.co.uk")
    end
  end
end