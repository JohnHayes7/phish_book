class PhishBook::Show
attr_accessor :year, :songs, :venue, :date, :fans
    @@all = []
    def initialize(day_date, venue, location)
        @songs = []
        @day_date = day_date
        @venue = venue
        @location = location
        @@all << self
        add_to_year
    end

    def add_to_year
        year = PhishBook::year.all.select {|y| y == @day_date.split(" ")[1].split("/").last}
        year.shows << self
        binding.pry
    end

    def self.all
        @@all
    end

end