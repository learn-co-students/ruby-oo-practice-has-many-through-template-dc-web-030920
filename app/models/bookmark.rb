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
    
    def self.unwatched
        self.all.select {|bookmark| bookmark.status == "unwatched"}.count
    end

    def self.watched
        self.all.select {|bookmark| bookmark.status == "watched"}.count
    end

    def self.most_popular_movie
        self.all.map {|bookmark| bookmark.movie}.group_by(&:itself)
        .each_with_object({}) { |(key,value), hash| hash[key] = value.size}
        .max_by {|movie, count| count}[0]
        # binding.pry
    end
end



#<Bookmark:0x00007fa984a28e58
#@date="5/12/2010",
#@movie=#<Movie:0x00007fa984a29510 @genre="Sci-Fi", @name="Star Wars">,
#@status="watched",
#@user=#<User:0x00007fa984a29740 @age=75, @name="Bill">>