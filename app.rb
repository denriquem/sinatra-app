require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  'Goodbye world!'
end

get '/cat' do
  erb(:index)
end
