require "sinatra"
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # our routes go here
  get '/' do
    "Testing infrastructure working!"
  end 
  # Start the server if this file is executed directly
  run! if app_file == $0
end