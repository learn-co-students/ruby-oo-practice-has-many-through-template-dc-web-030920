#class for Model2 goes here
#Feel free to change the name of the class
class Drink
    attr_reader :name, :price, :customer, :bartender

    @@drinks = []

    def initialize(name, price, customer, bartender)
        @name = name
        @price = price
        @customer = customer
        @bartender = bartender
        @@drinks << self
    end

    def self.all 
        @@drinks
    end 

    def self.most_popular
        arr = self.all.map do |d| 
            d.name
        end 
        arr.max_by { |d| d.count(d)}
    end

    def self.most_expensive
        binding.pry
        self.all.max_by {|d| d.price}.name
    end 

end

