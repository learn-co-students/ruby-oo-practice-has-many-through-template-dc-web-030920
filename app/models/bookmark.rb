class Bookmark

    attr_reader :user, :movie, :date
    attr_accessor :status
    @@all = []
    def initialize(status, user, movie, date)
        @status = status
        @user = user
        @movie = movie
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end
    
end

#num unwatched movies
#num watched movies

#<Bookmark:0x00007fa984a28e58
#@date="5/12/2010",
#@movie=#<Movie:0x00007fa984a29510 @genre="Sci-Fi", @name="Star Wars">,
#@status="watched",
#@user=#<User:0x00007fa984a29740 @age=75, @name="Bill">>