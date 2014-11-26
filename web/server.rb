require 'sinatra'

class Breweries::Server < Sinatra::Application

  get '/' do
    erb :index
  end
  
end