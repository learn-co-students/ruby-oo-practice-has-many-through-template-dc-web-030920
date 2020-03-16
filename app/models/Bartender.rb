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

end
