class Pirate
    PIRATES = []
    attr_accessor :name, :weight, :height
    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height] 
    end 

    def self.all
        PIRATES 
    end 

    def self.clear
        PIRATES.clear.all
    end 
end
