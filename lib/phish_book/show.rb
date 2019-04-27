class PhishBook::Show
attr_accessor :year, :songs, :venue, :day_date, :fans, :location
    @@all = []
    def initialize(day_date, venue, location, set)
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

    def self.find_show_by_id(input)
        
        puts " "
        puts "#{@@all[input.to_i - 1].day_date} - #{@@all[input.to_i - 1].venue} - #{@@all[input.to_i - 1].location}"
        puts "#{@@all[input.to_i - 1].songs}"
        puts " "
    end




    def self.all
        @@all
    end

    

end