#class for Model1 goes here
#Feel free to change the name of the class
class Artist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        song = Song.all.find_all do |song| 
            song.artist == self
        end
        song
    end

    

end
