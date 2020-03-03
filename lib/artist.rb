class Artist
  attr_accessor :name, :songs
  @@artists = []
  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    @@artists.reduce(0) {|sum, artist| sum + artist.songs.length}
  end
end
