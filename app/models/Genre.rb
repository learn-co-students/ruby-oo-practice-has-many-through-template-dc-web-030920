class Genre

    attr_reader :genre_name
    
    @@all = []

    def initialize(genre_name)
        @genre_name = genre_name
        @@all << self
    end

    def self.all
        @@all
    end

    def song_titles
        self.songs.map {|song| song.title}
    end

    def artists
        self.songs.map {|song| song.artist}.uniq
    end

    def song #all songs that belong to the genre
        Song.all.select {|song| song.genre == self}
    end

end
