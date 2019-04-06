require_relative "phish_book/version"
require_relative "phish_book/cli"
require_relative "phish_book/fan"
require_relative "phish_book/scraper"
require_relative "phish_book/show"
require_relative "phish_book/song"
require_relative "phish_book/state"
require_relative "phish_book/year"

require "nokogiri"
require "open-uri"
require "pry"

module PhishBook
  class Error < StandardError; end
  # Your code goes here...
end
