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

    def all_movies_bookmarked
        Bookmark.all.select do |movies|
            movies.user == self
        end
    end

    def user_movies
        Bookmark.all.select { |movies| movies.user == self}
        .map {|x| x.movie}
    end

    def favorite_genre
        arr = Bookmark.all.select {|x|
        x.user == self}
        .map{|m| m.movie.genre}
        .inject(Hash.new(0)){|total, genre| total[genre] += 1 ;total}
        # .max_by{|k,v| v}
        # arr hash becomes an array. check if even numbers are tied. if yes then return both indexes
        #everything after this point is for a tie breaker
        new_arr = arr.to_a
        i = 0
        highest_c = 0
        favorite = []
        highest = nil
            while i < new_arr.count
                if new_arr[i][1] > highest_c
                    highest = new_arr[i]
                    favorite.clear
                    favorite << new_arr[i]
                    highest_c = new_arr[i][1]
                end
                
                
                if new_arr[i][1] == new_arr[i-1][1] 
                    favorite << new_arr[i]
                    
                end
                i +=1
            end
            favorite.map {|x| x[0]}.uniq
            # binding.pry
    
    end
end

#<Bookmark:0x00007fa984a28e58
#@date="5/12/2010",
#@movie=#<Movie:0x00007fa984a29510 @genre="Sci-Fi", @name="Star Wars">,
#@status="watched",
#@user=#<User:0x00007fa984a29740 @age=75, @name="Bill">>


# user1 = User.new("Bill", 75)

# user favorite genre DONE
# user movie List done
# user number of watched
# user number of unwatched

#class method
#favorite movies by age
#average age
#youngest
#oldest



