require './environment'

module FormsLab
  class App < Sinatra::Base

    configure do
      set :views, "./views/pirates"
    end

    get "/" do
      erb :root
    end

    get "/new" do
      erb :new
    end
    
    post "/pirates" do
      @pirate = Pirate.new(params["pirate"])
      params["pirate"]["ships"].each do | ship_details |
        Ship.new(ship_details)
      end

      @ships = Ship.all

      erb :show
    end

  end
end
