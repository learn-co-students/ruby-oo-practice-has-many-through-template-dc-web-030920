#class for Model3 goes here
#Feel free to change the name of the class
class Movie
  
    attr_reader :name, :genre
    @@all = []

    def initialize(name, genre)
        @name = name
        @genre = genre
        @@all << self
    end

    def self.all
        @@all << self
    end

    def self.find_by_movie(movie)
        self.all.select { |m| m.name == movie}
    end

    def self.most_genre
        Bookmark.all.select { |bookmark| bookmark.movie.genre}
        .map {|bookmark| bookmark.movie.genre}
        .group_by(&:itself)
        .each_with_object({}) { |(k,v), hash| hash[k] = v.size}
        .max_by {|key, value| value }[0]
    end

    def bookmarked_count
        Bookmark.all.select { |bookmark| bookmark.movie == self}.count
    end

    def avg_age
        ages = Bookmark.all.map {|bookmark| bookmark.user.age if bookmark.movie == self}
        .compact
        avg = ages.reduce(:+) / ages.count
        "The average age of viewers for #{self.name} is #{avg}."
    end

    def self.alphabetically
        self.all.sort {|a, b| a.name <=> b.name} #returning Movie class for some reason
        .select {|movie| movie if movie.class == Movie} #get rid Movie class and nil
    end
end
