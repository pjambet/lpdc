require 'sinatra'

get '/' do
  haml :index, layout: :application
end

get '/contact/?' do
  haml :contact, layout: :application
end

get '/produits/?' do
  @products = []
  haml :products, layout: :application
end
