#encoding: UTF-8
require 'sinatra'
require 'sequel'

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
