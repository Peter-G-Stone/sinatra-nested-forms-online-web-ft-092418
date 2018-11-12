class Pirate

    attr_accessor :name, :weight, :height, :ships
    
    @@all = []

    def initialize (name, weight, height)
        @name = name
        @weight = weight 
        @height = height
        @ships = []
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear 
        @@all = []
    end


end