class Author
   
   @@all = []
    attr_accessor :name, :title
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def posts
        Post.all.select {|posts| posts.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    def self.post_count
        Post.all.length
    end



end