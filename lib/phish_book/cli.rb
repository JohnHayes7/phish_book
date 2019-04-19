class PhishBook::CLI

    
    def greeting
    
    puts "WELCOME TO PHISH BOOK"
    puts "WHERE FANS CAN TO REMEMBER ALL THE THINGS THEY FORGOT"
    PhishBook::Scraper.year_scraper
    menu
    
    end

    def menu
    puts "Please enter a year between #{PhishBook::Year.all.first.value} & #{PhishBook::Year.all.last.value}"
    puts "Or type 'list' to select from a list of all years"
    input = gets.strip.downcase
        if input.between?(PhishBook::Year.all.first.value, PhishBook::Year.all.last.value)
        PhishBook::Scraper.show_info_scraper(input)
        binding.pry
        # PhishBook::Year.find_by_value(input)
        puts "Here are the shows from #{input}"
        PhishBook::Show.
        elsif input == "list"
            year_list
            input = gets.strip.to_i

        else
            menu
        end
    
    end

    def year_list
    PhishBook::Year.all.each_with_index{|y, i| puts "#{i+1}.#{y.value}"}
    end

end