require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Artist.new("Adele")
a2 = Artist.new("Drake")

g1 = Genre.new("Pop")
g2 = Genre.new("Hip-Hop")
g3 = Genre.new("R&B")
g4 = Genre.new("Ballad")

s1 = Song.new("Hello", a1, g1)
s2 = Song.new("Kiki",a2,g2)
s3 = Song.new("Rolling in the deep",a1,g1)
s4 = Song.new("Marvins room", a2, g3)
s5 = Song.new("Set fire to the rain", a1, g4)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
