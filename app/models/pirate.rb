class Pirate

    @@all = []

    attr_accessor :name, :weight, :height

    def initialize(params_pirate)
        @name = params_pirate[:name]
        @weight = params_pirate[:weight]
        @height = params_pirate[:height]
        @@all << self
    end

    def self.all
        @@all
    end

end