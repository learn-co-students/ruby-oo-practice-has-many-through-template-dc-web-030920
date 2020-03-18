#class for Model1 goes here
#Feel free to change the name of the class
class User

    attr_reader :name
    attr_accessor :age
    @@all = []
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def all_bookmarks
        Bookmark.all.select do |bookmark_instance|
            bookmark_instance.user == self
        end
    end

    def user_movies
        self.all_bookmarks.map {|x| x.movie}
    end

    def favorite_genre
        favorite = []
        self.all_bookmarks.map{|bookmark_instance| bookmark_instance.movie.genre}
        .inject(Hash.new(0)){|total, genre| total[genre] += 1 ;total}
        .to_a.each_cons(2) do |a, b| 
            if a[1] > b[1] 
                favorite.clear
                favorite << a[0]
            end
            favorite << a[0] if a[1] == b[1]
            favorite << b[0] if a[1] == b[1]
        end
        favorite.uniq
    end

    def set_watched(movie)
        self.all_bookmarks.find {|bookmarks| bookmarks.status = "watched" if bookmarks.movie == movie}
    end

    def set_unwatched(movie)
        self.all_bookmarks.find {|bookmarks| bookmarks.status = "unwatched" if bookmarks.movie == movie}
    end
end





