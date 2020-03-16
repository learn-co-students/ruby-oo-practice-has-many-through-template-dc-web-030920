#class for Venue goes here
#Feel free to change the name of the class
class Venue

    @@all_venues = []

    attr_accessor :venue_name, :capacity, :location

    def initialize(venue_name, capacity, location)
        @venue_name = venue_name
        @capacity = capacity
        @location = location
        @@all_venues << self
    end

    def self.all
        @@all_venues
    end

    def venue_contracts
        Contract.all.select{|contracts| contracts.venue == self}
    end

    def all_performances
        self.venue_contracts.collect {|contract| contract.artist.name }
    end

end
