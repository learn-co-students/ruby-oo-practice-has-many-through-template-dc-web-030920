require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

club1 = Club.new("Basketball Club")
club2 = Club.new("Swimming")
club3 = Club.new("Soccer")
club4 = Club.new("Chess")

member1 = Member.new("Dawit", 19)
member2 = Member.new("Yahjaira", 27)

membership1 = Membership.new(club1, member1)
membership2 = Membership.new(club2, member1)

membership3 = Membership.new(club2, member2)
membership4 = Membership.new(club4, member2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
