# Add your code here
require 'pry'
class Dog

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        self.save
    end 

    def self.all
        @@all
    end 

    def self.clear_all
        @@all = []
    end 

    def self.print_all
        self.all.map do |dogs|  
            puts dogs.name
        end.uniq
    end 

    def save
        @@all << self
    end 
end 
