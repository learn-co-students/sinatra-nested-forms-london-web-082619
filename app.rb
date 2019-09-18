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

      # params[:pirate][:ships].each do |details|
      #   Ship.new(details)
      # end
      @ship_1 = args[:pirate][:ships][]
      @ship_2 = args[:pirate][:ships][]

      @ships = Ship.all
      
      erb :'/pirates/show' # redirect users to display all the info screen
      
    end

  end
end
