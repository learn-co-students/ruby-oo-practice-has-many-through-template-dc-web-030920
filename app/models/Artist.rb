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

    def genres
        self.songs.map do |song|
            song.genre
        end.uniq
    end
        
        #Returns the most played song by artist
    def self.song_with_over_1000_hits
        most_popular = 0
        Song.all.find_all do |song|
            if song.num_of_plays > 1000
                song.artist
            end
        end
    end



    

end
