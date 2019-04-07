class PhishBook::Scraper

    def self.year_scraper
        raw_ary = []
        years = []
        site = "http://phish.net/setlists/phish/"
        page = Nokogiri::HTML(open(site))
        page.css("option").each do |y|
            if y.text.size == 4
            raw_ary << y.text
            end
        end
        raw_ary.uniq.each do |y|
            if y.to_i > 0
            years << y
            end
        end
            years
            end
end