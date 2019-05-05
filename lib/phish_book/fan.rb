class PhishBook::Fan
attr_accessor :name, :memories, :attended_shows

    @@all = []
    def initialize(name)
        @name = name
        @attended_shows = []
        @memories = []
        @@all << self
    end

    def self.create_fan
        puts "Please enter a user name:"
        name = gets.strip
        if !@@all.include?(name)
            self.new(name)
        else 
            puts "Sorry but #{name} is taken."
            puts "Please try another name"
            self.create_fan   
        end   
    end

    def self.all
        @@all
    end

    # def attended_shows

    # end

    # def leave_memory(show)

        
    # end


end