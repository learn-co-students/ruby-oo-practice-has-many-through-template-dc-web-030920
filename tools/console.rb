require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

user1 = User.new("Bill", 75)
user2 = User.new("Johnny Bravo", 27)
user3 = User.new("Another user", 48)
user4 = User.new("Old person", 800)
user5 = User.new("Darth Vader", 50)
user6 = User.new("Toddler", 0)

movie1 = Movie.new("Star Wars", "Sci-Fi")
movie2 = Movie.new("John Wick", "Action")
movie3 = Movie.new("Nightcrawler", "Thriller")
movie4 = Movie.new("Battle Star", "Sci-Fi")
movie5 = Movie.new("Along Came Polly", "Rom Com")
movie6 = Movie.new("Avengers", "Action")
movie7 = Movie.new("Joker", "Thriller")
movie8 = Movie.new("Rambo", "Action")
book = Bookmark.new("watched", user5, movie5, 5/5/2020)
bookmark1 = Bookmark.new("watched", user1, movie1, "5/12/2010")
bookmark2 = Bookmark.new("watched", user2, movie2, "12/12/2012")
bookmark3 = Bookmark.new("unwatched", user3, movie3, "1/18/2020")
bookmark4 = Bookmark.new("watched", user4, movie3, "7/1/2019")
bookmark5 = Bookmark.new("watched", user4, movie6, "10/15/2020")
bookmark6 = Bookmark.new("unwatched", user5, movie4, "1/1/2009")
bookmark7 = Bookmark.new("watched", user5, movie1, "5/4/1977")
bookmark8 = Bookmark.new("unwatched", user5, movie8, "3/19/2012")
bookmark9 = Bookmark.new("watched", user6, movie7, "3/15/2020")
bookmark10 = Bookmark.new("watched", user6, movie1, "2/20/2500")
bookmark11 = Bookmark.new("watched", user5, movie2, "2/20/2500")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
