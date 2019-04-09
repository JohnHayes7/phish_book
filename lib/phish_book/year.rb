class PhishBook::Year
    attr_accessor :date, :value, :shows

    @@all = []
    def initialize(year)
        @shows = []
        @value = year
        @@all << self
    end

    # def add_date(day_date)
    #     @date = day_date
    # end

    def self.all
        @@all.reverse
    end

    def self.find_by_value(year)
        all.select{|a| a.value == year}
    end

    def shows
        @shows
    end

end