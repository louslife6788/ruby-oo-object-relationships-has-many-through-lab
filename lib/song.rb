class Song 
    @@all = []

    attr_accessor  :genre, :artist
    attr_reader :name
    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre 
        @@all << self 
    end 


    def self.all
        @@all
    end







end 
