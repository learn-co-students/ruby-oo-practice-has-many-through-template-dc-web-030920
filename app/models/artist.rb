#class for Artist goes here
#Feel free to change the name of the class
class Artist 
  
    attr_reader :name, :genre 
    
    @@all_artists = []

    def initialize(name, genre)
        @name = name 
        @genre = genre 
        @@all_artists << self
    end

    def self.all
        @@all_artists
    end


    def my_contracts
        Contract.all.select {|contracts| contracts.artist == self }
    end

    def my_venues
        #it returns all venues an Artist will perform at   
       my_venues = [] 
       self.my_contracts.select {|contracts| my_venues << contracts.venue }
       my_venues 
    end

    def self.all_genres
        self.all.collect{|artist| artist.genre}
    end


    def projected_max_revenue

        total = 0 
        self.my_contracts.each {|contract| total += (contract.ticket_price * contract.venue.capacity )}
        total 

        binding.pry 
        #given current contracts, and max capacity of venue (from venue), ticket price (from contract), what is our potential max revenue if we sell out? 
    end 



 end 







