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

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:cat_name]
  erb(:index)
end

get '/cat-form' do
  p params
  erb(:cat_form)
end