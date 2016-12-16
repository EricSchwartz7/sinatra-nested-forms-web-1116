require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params['pirate']['name'],params['pirate']['height'],params['pirate']['weight'])
      @ships = params[:pirate][:ships].map do |ship|
        a = Ship.new(ship['name'],ship['type'],ship['booty'])
      end
      erb :'pirates/show'
    end

  end
end
