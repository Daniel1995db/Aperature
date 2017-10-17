require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'carrierwave'
require 'carrierwave/orm/activerecord'
require 'sqlite3'
require './models'

enable :sessions
set :database, {adapter: 'sqlite3', database: 'microblog.sqlite3'}

get '/' do
	erb :home
end

get '/profile' do
	@users = User.all
	erb :profile
end

get'/login' do
	erb :login
end

get '/signup' do 
	erb :signup
end

post '/signup' do
  user = User.new(
    name: params[:name],
    last: params[:last],
    username: params[:username],
    password: params[:password],
    photo: params[:photo],
    occupancy: params[:occupancy],
    relationship: params[:relationship]
  )
  user.save
  # if user.save
  #   flash[:message] = "Welcome! You've registered successfully"
  #   redirect '/'
  # else
  #   flash[:message] = "Ooops, something went wrong. Your account couldn't be created at this time"
  #   redirect back
  
end
