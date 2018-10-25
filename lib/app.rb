require 'sinatra/base'
require 'shotgun'
require_relative 'bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end
  run! if app_file == $0
end
