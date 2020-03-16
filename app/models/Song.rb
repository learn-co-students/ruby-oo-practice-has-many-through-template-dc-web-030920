#class for Model3 goes here
#Feel free to change the name of the class
class Song

    attr_reader :artist, :genre, :song_name, :num_of_plays

    @@all = []

    def initialize(artist, genre, song_name, num_of_plays)
        @artist = artist
        @genre = genre
        @song_name = song_name
        @num_of_plays = num_of_plays
        @@all << self
    end

    def self.all
        @@all
    end

    def artists
        Artist.all.select do |song_instance|
            song_instance == self.artist
            # binding.pry 
        end
    end

    def genres
        Genre.all.select do |genre_instance|
            genre_instance == self.genre
        end
    end

    def self.total_song_plays
        total = 0
        self.all.find_all do |song|
            total += song.num_of_plays 
        end 
        total
    end

    
end
