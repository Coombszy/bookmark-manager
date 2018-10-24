require 'sinatra/base'
require 'shotgun'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end
  get '/bookmarks' do
    bookmarks = ['www.google.co.uk', 'www.youtube.co.uk']
    bookmarks.join
  end
  run! if app_file == $0
end
