class PhishBook::Year
    attr_accessor :date, :value

    @@all = []
    def initialize(year)
        @value = year
        @@all << self
    end

    # def add_date(day_date)
    #     @date = day_date
    # end

    def self.all
        @@all.reverse
    end

end