require "sinatra"
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # our routes go here
  get '/' do
    erb :index
  end 

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end

  # Start the server if this file is executed directly
  run! if app_file == $0
end