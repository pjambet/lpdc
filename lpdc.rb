#encoding: UTF-8
require 'sinatra'
require 'sinatra/partial'
require 'sequel'

set :partial_underscores, true

DB = Sequel.connect(ENV['DATABASE_URL'] || 'postgres://localhost/lpdc')


get '/' do
  haml :index, layout: :application
end

get '/contact/?' do
  haml :contact, layout: :application
end

get '/produits/?' do
  @products = DB[:products].all
  haml :products, layout: :application
end

post '/gold_book' do
  gold_book = DB[:gold_book]
  callback_url = params.delete('callback')
  gold_book.insert(params.merge(created_at: DateTime.now))
  redirect callback_url
end
