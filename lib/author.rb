class Author
    attr_accessor :name, :posts
    
    @@all = []
    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end
    
    def self.all
        @@all
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        post.author = self
    end

    def self.post_count
        counter = 0
        @@all.each do |author|
            author.posts.each do |post|
                counter += 1
            end
        end
        counter
    end
                


end