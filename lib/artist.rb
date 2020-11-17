require 'pry'
class Artist
    
    attr_accessor :name

    def initialize(name) 
        @name = name
        @songs = []
        
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end
    
    def self.song_count
    #    counter = 0
    #     Song.all.each do |songs|
    #         #binding.pry   
    #         if songs 
    #             counter += 1
    #         end
    #     end
    #     return counter
    Song.all.length
    end


    

end