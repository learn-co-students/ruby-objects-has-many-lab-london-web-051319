require_relative "artist.rb"
require_relative "author.rb"
require_relative "song.rb"

class Post

attr_accessor :title, :author, :name
@@all = []

def initialize(title)

  @title = title
  @author = author
  @name = name
  @@all<< self
end

def self.all
  @@all
end

def author_name

self.author.name if self.author

end



end
