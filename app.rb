require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'carrierwave'
require 'carrierwave/orm/activerecord'
require 'sqlite3'
require './models'

set :database, {adapter: 'sqlite3', database: 'microblog.sqlite3'}

get '/' do
	erb :home
end

get '/profile' do
	@users = User.all
end