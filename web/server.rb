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
    # query = params[:query]
    # page = params[:page] || 1
    # per_page = BreweryDB::PaginatedCollection::BATCH_SIZE

    # results = client.search.beers(q: query, p: page)
    # count = results.count

    # @beers = WillPaginate::Collection.create(page, per_page, count) do |pager|
    #   pager.replace results.take(per_page)
    # end

    @brewery = brewery_db.breweries.find('OGHzdU')
    @breweries = [brewery_db.breweries.all(established: 2006)]
    binding.pry
    erb :index
  end

  run! if __FILE__ == $0

end