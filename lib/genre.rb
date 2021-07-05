class Genre

    attr_accessor :name

    @@all = []
     
    def initialize(type)
        @name = type
        @@all << self 
    end


    def self.all
        @@all
    end

    def songs
        Song.all { |song| song.genre == self }
    end

    def artists
        songs.map{|song| song.artist}.uniq
    end
    
    

end

