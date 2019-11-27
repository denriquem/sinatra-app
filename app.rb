require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  'Goodbye world!'
end

get '/cat' do
  @rand_name = ["daniel", "big tuna", "danny"].sample
  erb(:index)
end

get '/named-cat' do
  @rand_name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @rand_name = params[:name]
  erb(:index)
end
