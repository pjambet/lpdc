#encoding: utf-8
#!/usr/bin/env ruby
require 'rubygems'
require 'haml'
require 'sinatra'
require 'sinatra/partial'
require 'sinatra/minify'
require 'sequel'

class App < Sinatra::Application
  $KCODE = 'u' if RUBY_VERSION < '1.9'

  before do
    content_type 'text/html', 'charset' => 'utf-8'
  end

  set :partial_underscores, true
  set :default_encoding, 'utf-8'
  DB = Sequel.connect(ENV['DATABASE_URL'] || 'postgres://localhost/lpdc')

  register Sinatra::Minify

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

  get '/distributeurs' do
    @distributors = DB[:distributors].all
    haml :distributors, layout: :application
  end

  get '/livre_dor/?' do
    @gold_book_items = DB[:gold_book].order(:created_at).reverse
    haml :gold_book, layout: :application
  end

  post '/gold_book' do
    gold_book = DB[:gold_book]
    callback_url = params.delete('callback')
    # it's a bot
    antibot = params.delete('flare')
    if antibot.nil? || antibot == ""
      gold_book.insert(params.merge(created_at: DateTime.now))
    end
    redirect callback_url
  end
end
