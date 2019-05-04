class PhishBook::Fan
attr_accessor :name, :memories

    @@all = []
    def initialize(name)
        @name = name
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

    def leave_memory(input)
        puts "#{input}"

    end



end