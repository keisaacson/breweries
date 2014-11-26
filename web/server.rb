require_relative '../lib/breweries.rb'
require 'sinatra'
require 'brewery_db'
require 'pry-byebug'
require 'dotenv'

class Breweries::Server < Sinatra::Application

  Dotenv.load 

  brewery_db = BreweryDB::Client.new do |config|
    config.api_key = ENV['BREWERY_DB_KEY']
  end

  get '/' do
    @breweries = brewery_db.locations.all(locality: 'San Francisco')
    binding.pry
    erb :index
  end

  run! if __FILE__ == $0

end