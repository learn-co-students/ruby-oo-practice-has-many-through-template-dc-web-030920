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

song1 = Song.new(drake, rap, "Hotline Bling")
song8 = Song.new(drake, rap, "So Far Gone")
song2 = Song.new(kanye, rap, "Graduation")
song3 = Song.new(ciara, rb, "Her Song")
song4 = Song.new(beyonce, rb, "Halo")
song5 = Song.new(eminem, rap, "8 Mile")
song6 = Song.new(john, pop, "All of Me")
song7 = Song.new(tim, country, "Country")

puts "----Testing Artist Methods----"
p drake.songs == [song1, song8]


puts "----Testing Song Methods----"


puts "----Testing Genre Methods----"






# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
