require_relative "artist.rb"
require_relative "song.rb"
require_relative "post.rb"

class Author

  attr_accessor :name, :posts
@@author = 0

def initialize(name)
  @name = name
  @posts = []
end

def add_post(post)
@posts<< post
post.author = self
@@author+= 1
end

def add_post_by_title(title)
  post = Post.new(title)
  self.add_post(post)
end

def self.post_count
@@author
end

end
