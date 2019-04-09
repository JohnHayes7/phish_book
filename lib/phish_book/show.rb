class PhishBook::Show
attr_accessor :year, :songs, :venue, :date, :fans

    def initialize(date, venue)
        @songs = []
        @date = date
        @venue = venue
    end

end