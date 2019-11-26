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
