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

    def unique_genres # returns an array of unique genre_name 's' by artist
        self.songs.map {|song| song.genre.name}.uniq
    end

    def songs #all songs instances that belong to the artist
        Song.all.select {|song| song.artist == self}
    end

    def favorite_genre
        # full_genre_arr = self.songs.map {|song| song.genre.name}
        # if full_genre_arr.length == unique_genres.length
        #     ## if these two are the same, then there is no favorite genre
        #     "This artist does not have a favorite genre"
        # else
        #     full_genre_arr.max
        # end
        hash = {}
        self.songs.map do |song| 
            song.genre.name 
            if !hash[song.genre.name] 
                hash[song.genre.name] = 1
            else
                hash[song.genre.name] += 1
            end
        end
       
        if hash.select{|key,value| value > 1} == {}
            "This artist does not have a favorite genre"
        else
            hash.max_by{|key, value| value}[0]
        end
    end

end