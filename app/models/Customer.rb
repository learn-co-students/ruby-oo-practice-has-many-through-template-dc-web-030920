#class for Model1 goes here
#Feel free to change the name of the class
class Customer
attr_reader :name

@@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def order_drink(drink, price, bartender)
        Drink.new(drink, price, self, bartender)
    end

    def self.all
        @@all
    end 

    def drinks
        Drink.all.select do |d|
            d.customer == self
        end 
    end

    def check
        check = 0 
        self.drinks.each do |d|
            check += d.price
        end
        check
    end
end
