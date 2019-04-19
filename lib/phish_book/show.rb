class PhishBook::Show
attr_accessor :year, :songs, :venue, :date, :fans
 @@all = []
 def initialize(day_date, venue, location)
    @songs = []
    @day_date = day_date
    @venue = venue
    @location = location
    @@all << self
    binding.pry
end

end