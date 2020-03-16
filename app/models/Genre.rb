#class for Model2 goes here
#Feel free to change the name of the class
class Genre

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
        Song.all.find_all do |song|
            song.genre == self
        end.uniq
    end

    def artists
        self.songs.map do |song|
            song.artist
        end.uniq
    end

    def self.most_popular_genre
        genres = Song.all.map do |song|
            song.genre.name
        end.max
        binding.pry
    end
    

end
