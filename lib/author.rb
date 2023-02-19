require_relative 'article'
require_relative 'magazine'

class Author
    attr_reader :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def articles
      Article.all.select { |article| article.author == self } 
    end
  
    def magazines
      articles.map { |article| article.magazine }.uniq
    end
  
    def topic_areas
      magazines.map { |magazine| magazine.category }.uniq
    end
end
  
require_relative 'article'
require_relative 'magazine'

# Creating a new Author instance
author1 = Author.new("Boniface Korir")
author2 = Author.new("Millicent Jerono")
author3 = Author.new("Brian G")
author4 = Author.new("Drake John")


# Adding  an article to an author
article1 = Article.new(author1, magazine1, "The Vogue")
author1.add_article(article1)

article2 = Article.new(author2, magazine2, "The Forbes")
author1.add_article(article1)

article3 = Article.new(author3, magazine3, "The National Geographic Traveler")
author1.add_article(article1)


article4 = Article.new(author4, magazine4, "The Entertainment Weekly")
author1.add_article(article1)

# Getting the author's articles 
puts author1.articles 
puts author2.articles 
puts author3.articles 
puts author4.articles 


# Getting the authors magazines
puts author1.magazines 
puts author2.magazines 
puts author3.magazines 
puts author4.magazines 

  