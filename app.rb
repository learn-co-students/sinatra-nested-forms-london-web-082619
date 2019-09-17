require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do 
      erb :root
    end 

    get '/new' do 
      erb :'pirates/new'
    end 

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      binding.pry
      params[:pirate][:ships].each{|ship|
      Ship.new(ship)}

      @ships = Ship.all 

      erb :'pirates/show'
    end
      # @ship1 = Ship.new(params[][:name], params[][:type], params[][:booty])
      # @ship2 = Ship.new(params[1][:name], params[1][:type], params[1][:booty])
    
    # code other routes/actions here
end
end