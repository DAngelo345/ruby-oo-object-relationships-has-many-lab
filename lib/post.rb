require 'pry'
class Post

    @@all = []

    attr_accessor :author, :title

    def initialize(title) 
      
      
        @@all << self
        @title = title
       
    end

    def self.all
        @@all
    end
    
    def title
        @title
        #binding.pry
    end

    def author_name
        if self.author 
            self.author.name
        end
    end
end