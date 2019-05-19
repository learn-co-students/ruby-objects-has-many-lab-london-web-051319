class Post

   attr_accessor :title, :author

   @@all = []

   def self.all
      @@all
   end

   def initialize(title)
      @title = title
      @author = author
      @@all << self
   end

   def author
      @author
   end

   def author_name
      if self.author
         self.author.name
      else
         nil
      end
   end

end