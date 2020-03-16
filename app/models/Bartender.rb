#class for Model3 goes here
#Feel free to change the name of the class
class Bartender
    attr_reader :name, :yrs_experience
    @@all_bartenders = []

    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all_bartenders << self
    end

    def drinks
        Drink.all.select do |d|
            d.bartender == self
        end
    end

    def customers
        self.drinks.map do |d|
            d.customer
        end.uniq
    end 

    def num_drinks
        self.drinks.count
    end
end
