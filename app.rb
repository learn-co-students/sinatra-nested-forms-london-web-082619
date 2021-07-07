require './environment'

module FormsLab
  class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "./views/pirates")}

    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do

      @pirate = Pirate.new(params[:pirate])
      @ship_one = Ship.new(params[:pirate][:ships][0])
      @ship_two = Ship.new(params[:pirate][:ships][1])
      erb :show
    end

  end
end
