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
        # binding.pry
        # Bookmark.all.select {|bookmark| }
        # Bookmark.all.max_by {|x| x.movie == self

        # }
        Bookmark.all.select { |x| x.movie.genre}
        .map {|x| x.movie.genre}
        .group_by(&:itself)
        .each_with_object({}) { |(k,v), hash| hash[k] = v.size}
        .max_by {|key, value| value }[0]

        
    end

    def bookmarked
        Bookmark.all.select { |x| x.movie == self}.count
    end

end




#<Bookmark:0x00007fa984a28e58
#@date="5/12/2010",
#@movie=#<Movie:0x00007fa984a29510 @genre="Sci-Fi", @name="Star Wars">,
#@status="watched",
#@user=#<User:0x00007fa984a29740 @age=75, @name="Bill">>


#all movies
#most common genre - DONE
#sorted alphabetically and/or most alphabetical name




#instance methods
# how many people bookmarked this movie