require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, Proc.new { File.join(root, "./views/pirates")}
    # code other routes/actions here

    get '/' do
      #renders the instructions
      "Welcome to the Nested Forms Lab!"
    end

    get '/new' do
      #renders the pirate input fields for name, weight, and height attributes on the page
      #renders the first ship's input fields for the name, type, and booty attributes on the page
      #renders the second ship's input field for the name, type, and booty attributes on the page
      erb :new
    end

    post '/pirates' do
      #displays the pirate information upon form submission
      #displays the first ship's information upon form submission
      #displays the second ship's information upon form submission
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      
      erb :show
    end

    get '/pirates' do
      erb :show
    end

  end
end
