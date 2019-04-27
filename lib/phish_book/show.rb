class PhishBook::Show
attr_accessor :year, :songs, :venue, :day_date, :fans, :location, :memories
    @@all = []
    def initialize(day_date, venue, location, set)
        @memories = []
        @songs = set
        @day_date = day_date
        @venue = venue
        @location = location
        @@all << self
        add_year
    end

    
    def add_year
        year = PhishBook::Year.all.detect {|y| y.value == @day_date.split(" ")[1].split("/").last}
        year.shows << self
        self.year = year
       
    end


    def self.all
        @@all
    end

    

end