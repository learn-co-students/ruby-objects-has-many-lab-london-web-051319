class Author
  attr_accessor:name
  @@all = []
 def initialize(name)
   @name = name
   @@all << self
 end

 def posts
   Post.all.select do |post|
     post.author == self
   end
 end

 def self.all
   @@all
 end

 def add_post(post)
   post.author = self
 end

 def add_post_by_title(title)
   post = Post.new(title)
   post.author = self
   post
 end

 def self.post_count
   count = 0
   Author.all.each do |author|
     count += author.posts.count
   end
   count
 end


end
