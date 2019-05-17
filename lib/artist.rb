class Artist
    attr_accessor :name, :songs
    
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
        song.artist = self                 
    end

    def songs
        @songs
    end

    def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
    end

    def self.song_count
        count = 0
        @@all.each do |artist|
            artist.songs.each do |song|
                count += 1
            end
        end
        return count
    end
end
