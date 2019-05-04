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
                more_shows?
            elsif input == "list"
                year_list
                list_mode
                more_shows?
            elsif input == "about"
                about
            else
                menu
            end
    
    end


    def year_list
        PhishBook::Year.all.each_with_index{|y, i| puts "#{i+1}.#{y.value}"}
    end

    def list_mode
        puts "Please enter the number of the year you'd like to revisit"
        input = gets.to_i
        year = PhishBook::Year.all[input - 1].value
        get_shows(year)
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
            puts " "
            puts "#{year.shows.reverse[show_input - 1].memories}"
            # puts "Memories:"
            #     if !year.shows.memories.length > 0
            #         puts "There are no memories for this show yet.  Be the first!"
            #     else
            #         year.shows.memories.each_with_index do |m, i|
            #             puts "#{i+1}. #{m}"
            #         end
            #     end    
    end

    
    def more_shows?
        puts "Would you like to see more shows? (Y/N)"
        input = gets.strip.downcase
        if input == "y"
            menu
        elsif input == "n"
            puts "Come back soon to add or check out more memories"
        else
            puts "please make a valid selection"
            menu

        end
    end

    def this_year?
        puts "would you like to more shows from this"
    end
    

    def about 
        puts "About Section -- FILL IN WHAT PHISH BOOK IS ALL ABOUT"
        puts "Would you like to see some shows (Y/N)"
            more_shows
    end

end