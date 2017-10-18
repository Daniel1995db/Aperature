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

get '/home' do
  redirect '/signup'
end

get '/buzzfeed' do
  @user = User.all
  erb :buzzfeed
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
  if user.save
    flash[:message] = "Welcome! You've registered successfully"
    redirect '/buzzfeed'
  else
    flash[:message] = "Ooops, something went wrong. Your account couldn't be created at this time"
    redirect back
  end
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.password == params[:password]
    flash[:message] = "Welcome"
    redirect '/buzzfeed'
  else 
    flash[:message] = "Incorrect Username or Password"
    redirect back 
    # onLoad="setTimeout('delayedRedirect()', 3000)"
  end
end

















