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
  "<div style='border: 3px dashed red'>
    <img src='https://i.imgur.com/jFaSxym.png'>
  </div>"
end