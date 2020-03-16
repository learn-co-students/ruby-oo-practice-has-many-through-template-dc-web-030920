#class for Model3 goes here
#Feel free to change the name of the class
class Song

    attr_reader :artist, :genre, :song_name

    @@all = []

    def initialize(artist, genre, song_name)
        @artist = artist
        @genre = genre
        @song_name = song_name
        @@all << self
    end

    def self.all
        @@all
    end

    
end
