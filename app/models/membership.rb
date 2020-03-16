#class for Model1 goes here
#Feel free to change the name of the class
class Membership
    attr_reader :club, :member
    attr_accessor :status
    @@all = []
    def initialize(club, member)
        @club = club
        @member = member
        @status = "N/A"
        @@all << self
    end

    def self.all
        @@all
    end



end
