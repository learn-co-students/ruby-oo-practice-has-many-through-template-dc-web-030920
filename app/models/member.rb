#class for Model3 goes here
#Feel free to change the name of the class
class Member
    attr_reader :name, :age
    @@all = []
    def initialize(name, age)
        @age = age
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    
  
end
