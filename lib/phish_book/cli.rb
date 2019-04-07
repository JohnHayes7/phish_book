class PhishBook::CLI

    
    def greeting
    puts "WELCOME TO PHISH BOOK"
    puts "WHERE FANS CAN TRY TO REMEMBER ALL THE THINGS THEY FORGOT"
    PhishBook::Scraper.year_scraper
    
    end

    def year_list
    PhishBook::Year.all.each_with_index{|y, i| puts "#{i+1}.#{y.value}"}
    end

end