require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


nsync = Artist.new("N'sync", "Pop")
kendrick = Artist.new("Kendrick L.", "Hip Hop")
reba = Artist.new("Reba M.", "Country")

the_930_club = Venue.new("9:30 club", 500, "815 V St NW")
black_cat = Venue.new("Black Cat", 150, "1811 14th St NW")
u_street_music_hall = Venue.new("U Street Music Hall", 300, "1115A U St NW")


contract1= Contract.new(kendrick, black_cat, 30)
contract2= Contract.new(kendrick, the_930_club, 75)
contract3=Contract.new(reba, u_street_music_hall, 60)
contract4=Contract.new(nsync, the_930_club, 100)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
