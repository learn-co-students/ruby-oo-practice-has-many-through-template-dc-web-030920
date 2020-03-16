require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


drake = Artist.new("Drake")
kanye = Artist.new("Kanye")
ciara = Artist.new("Ciara")
beyonce = Artist.new("Beyonce")
eminem = Artist.new("Eminem")
john = Artist.new("John Legend")
tim = Artist.new("Tim Mcgraw")

rap = Genre.new("Rap")
rb = Genre.new("R&B")
country = Genre.new("Country")
pop = Genre.new("Pop")

song1 = Song.new(drake, rap, "Hotline Bling", 200)
song8 = Song.new(drake, rap, "So Far Gone", 300)
song2 = Song.new(kanye, rap, "Graduation", 900)
song3 = Song.new(ciara, rb, "Her Song", 100)
song4 = Song.new(beyonce, rb, "Halo", 800)
song5 = Song.new(eminem, rap, "8 Mile", 9000)
song6 = Song.new(john, pop, "All of Me", 400)
song7 = Song.new(tim, country, "Country", 750)

puts "----Testing Artist Methods----"
p Artist.all == [drake, kanye, ciara, beyonce, eminem, john, tim]
p drake.songs == [song1, song8]
p drake.genres == [rap]
p Artist.song_with_over_1000_hits == [song5]

puts "----Testing Song Methods----"
p Song.all == [song1, song8, song2, song3, song4, song5, song6, song7]
p song8.artists == [drake]
p song3.genres == [rb]
p Song.total_song_plays == 12450


puts "----Testing Genre Methods----"
p Genre.all == [rap, rb, country, pop]
p country.artists == [tim]
p rap.songs == [song1, song8, song2, song5]
p Genre.most_popular_genre == "Rap"


# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
