require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "hello!"
end

get '/secret' do
  "This is the secret route..."
end

get '/another' do
  "This is another route"
end

get '/cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end