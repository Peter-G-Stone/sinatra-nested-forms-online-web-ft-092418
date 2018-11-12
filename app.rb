require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'/pirates/instruct'
    end

    get '/new' do 
      erb :'/pirates/new'
    end

    post '/pirates' do 
      pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      params[:pirate][:ships].each do |ship|        
        s = Ship.new(ship[:name], ship[:type], ship[:booty])
        pirate.ships << s
      end

      erb :'pirates/show'
    end

  end
end
