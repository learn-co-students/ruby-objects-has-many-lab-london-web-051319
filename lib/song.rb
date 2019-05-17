require_relative "author.rb"
require_relative "artist.rb"
require_relative "post.rb"

class Song

  attr_accessor :name, :artist
  @@all = []

def initialize(name)
  @name = name
  @artist = artist
  @@all<< self
end

def self.all
@@all
end

def artist_name
self.artist.name if self.artist

end

end
