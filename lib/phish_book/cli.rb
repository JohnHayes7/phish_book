class PhishBook::CLI

    
    def greeting
    
    puts "*************-WELCOME TO PHISH BOOK-*****************"
    puts "WHERE FANS CAN TO REMEMBER ALL THE THINGS THEY FORGOT"
    PhishBook::Scraper.year_scraper
    menu
    
    end

    def menu
    puts "Please enter 'about' to learn more about the Phish Book Project"
    puts "Or if you would like to revisit some shows please follow the directions below--->"
    puts "Please enter a year between #{PhishBook::Year.all.first.value} & #{PhishBook::Year.all.last.value}"
    puts "Or type 'list' to select from a list of all years"
    input = gets.strip.downcase
        if input.between?(PhishBook::Year.all.first.value, PhishBook::Year.all.last.value)

            
            get_shows(input)

            puts "Would you like to check out more shows? (Y/N)"
            input = gets.strip.downcase
            more_shows?(input)
           
        elsif input == "list"
            year_list
            input = gets.strip.to_i
        
        elsif input == "about"
            about
        else
            menu
        end
    
    end


    def year_list
    PhishBook::Year.all.each_with_index{|y, i| puts "#{i+1}.#{y.value}"}
    end


    def get_shows(input)
        PhishBook::Scraper.show_info_scraper(input)
            year = PhishBook::Year.find_by_value(input)
            puts "Here are the shows from #{input}"
            year.shows.reverse.each_with_index do |s, i|
                puts "#{i+1}. #{s.day_date} - #{s.venue} - #{s.location}"
            end
            puts "Please select the number of show you'd like to revisit:"
            show_input = gets.strip.to_i
            puts " "
            puts "#{year.shows.reverse[show_input - 1].day_date} - #{year.shows.reverse[show_input - 1].venue} - #{year.shows.reverse[show_input - 1].location}"
            puts "#{year.shows.reverse[show_input - 1].songs}"
    end

    
    def more_shows?(input)
        if input == "y"
            menu
        elsif input == "n"
            puts "Come back soon to add or check out more memories"
        else
            puts "please make a valid selection"
            menu

        end
    end
    

    def about 
        puts "About Section -- FILL IN WHAT PHISH BOOK IS ALL ABOUT"
        puts "Would you like to see some shows (Y/N)"
            more_shows
    end

end