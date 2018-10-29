require 'sinatra/base'
require 'shotgun'
require_relative 'bookmark.rb'

class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override

  delete '/bookmarks/:id' do
    connection = PG.connect(dbname: 'bm_database')
    connection.exec("DELETE FROM bookmarks WHERE id = #{params['id']}")
    redirect '/bookmarks'
  end
  get '/' do
    'Bookmark Manager'
  end
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end
  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end
  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end
  run! if app_file == $0
end
