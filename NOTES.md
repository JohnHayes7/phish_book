1 - SCRAPE PHISH SETLISTS
2 - RETURNS SETLISTS BY YEAR
3 - RETURNS SETLISTS BY SONGS
    (SETLISTS THAT FEATURE A SONG)
4 - RETURNS SETLISTS BY STATE
5 - CAN TALLY # OF TIMES A SONG WAS PLAYED THAT YEAR
6 - HAS USERS



A YEAR HAS MANY SHOWS
A YEAR HAS MANY DATES
SHOWS BELONG TO A YEAR

STATES CAN HAVE MANY VENUES
VENUE BELONGS TO A STATE

SHOWS HAVE MANY SONGS
SHOWS BELONG TO A VENUE

SONGS BELONG TO SHOWS

FANS(Users) HAVE MANY SHOWS
FANS HAVE ONE PROFILE
PROFILE BELONGS TO FAN
SHOWS HAVE MANY FANS 
FANS HAVE ATTENDENCE (TRUE/FALSE) {Fan.new,attendee?}

FANS HAVE MANY MEMORIES
SHOWS HAVE MEMORIES(comments) through FANS

GONNA NEED:
PRY
ACTIVERECORD
RACK
RAKE
NOKOGIRI
OPENURI

TO DO LIST:
:4/29/19
Would you like to see more shows from #{current_year}?  You can also go back to the menu for shows from other years or exit to exit
Build: Before/Next Show Function
<!-- Finish Memory Display functionality -->
Add Memories to Shows and Relate to Fans
Setup and persist data to DB
Clean-up Sets Format-remove "['']"
<!-- Build out users -->