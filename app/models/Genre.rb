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

    def song_titles
        self.songs.map {|song| song.title}
    end

    def artists
        self.songs.map {|song| song.artist}.uniq
    end

    def songs #all songs that belong to the genre
        Song.all.select {|song| song.genre == self}
    end

    def all_songs_by(genre)
        # self.songs will return all songs instances by genre
        self.songs.select {|song| song.genre.name == genre}
    end

end
