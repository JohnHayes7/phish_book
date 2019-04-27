class PhishBook::Fan
attr_accessor :name, :memories

def initialize(name)
    @name = name
    @memories = []
end

def memories
    if @memories.length < 1
        puts "There are no memories for this show yet"
        puts "Were you there? Add memory to this show!"
        
    else 
        puts "Were you there? Add memory to this show!"
    end
end



end