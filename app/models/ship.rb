class Ship
    attr_accessor :name, :type, :booty

    @@ships = []

    def initialize(ships)
        @name = ships["name"]
        @type = ships["type"]
        @booty = ships["booty"]
        @@ships << self
    end

    def self.all
        @@ships
    end

    def self.clear
        @@ships = []
    end
end