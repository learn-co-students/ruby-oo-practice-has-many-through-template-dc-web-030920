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
     
    def song_titles 
        self.songs.map {|song| song.title}
    end

    def genres
        self.songs.map {|song| song.genre.genre_name}.uniq
    end

    def songs #all songs instances that belong to the artist
        Song.all.select {|song| song.artist == self}
    end

end