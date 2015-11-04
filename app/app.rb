ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  post '/links' do
    url = params[:url]
    title = params[:title]
    Link.create(url: url, title: title)
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/new'
  end

  run! if app_file == $0
end
