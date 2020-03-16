#class for Model2 goes here
#Feel free to change the name of the class
class Club
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def activate_membership(member_name)
       membership_status = Membership.all.find{|membership|
        membership.member.name == member_name && membership.club == self
    }
    membership_status.status = "Activated"
    end

    def deactivate_membership(member_name)
        membership_status = Membership.all.find{|membership|
        membership.member.name == member_name && membership.club == self
    }
    membership_status.status = "Deactivated"

    end

    def all_members
        Membership.all.select {|membership|
        membership.club == self
    }.map {|membership| membership.member.name}
    end

end
