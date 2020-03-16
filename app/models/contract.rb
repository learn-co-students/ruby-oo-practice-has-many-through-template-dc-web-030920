#class for Contract goes here
#Feel free to change the name of the class
class Contract

    @@all_contracts = []

    attr_accessor :venue, :artist, :ticket_price 

    def initialize(artist, venue, ticket_price)
        @venue = venue
        @artist = artist
        @ticket_price = ticket_price
        @@all_contracts << self
    end


    def self.all
        @@all_contracts
    end


end
