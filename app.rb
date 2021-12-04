require "sinatra"
require "sinatra/reloader"

require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  # our routes go here
  get '/' do
    # session[:player_1_hp] = 50
    # session[:player_2_hp] = 50 
    erb :index
  end 

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do 
    p params
    p @player_1_name
    if params["attack"] == "Attack #{ $player_1.name }"
      $player_1.take_damage()
    elsif params["attack"] == "Attack #{ $player_2.name }"
      $player_2.take_damage()
    end

    redirect '/play'
  end

  # Start the server if this file is executed directly
  run! if app_file == $0
end