#requiring files 
require_relative 'author'
require_relative 'magazine'

class Article
  #getter methods 
    attr_reader :title, :author, :magazine

    #an array that will keep track of all instances of the Article class.
    @@all = []
  

    #initialize method for article
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.search_by_title(title)
      @@all.find { |article| article.title == title }
    end
end



require_relative 'author'
require_relative 'magazine'


# Creating Author instances
author1 = Author.new("Boniface Korir")
author2 = Author.new("Millicent Jerono")
author3 = Author.new("Brian G")
author4 = Author.new("Drake John")

#creating Magazine instances
magazine1 = Magazine.new("The NAIROBIAN", "Lifestyle and Fashion")
magazine2 = Magazine.new("Science News", "Business and Finance")
magazine3 = Magazine.new("National Geographic Traveler", "Travel and Food")
magazine4 = Magazine.new("Entertainment Weekly", "Arts and Entertainment")

# Creating  Article instances
article1 = Article.new(author1, magazine1, "The Vogue")
article2 = Article.new(author2, magazine2, "The Forbes")
article1 = Article.new(author3, magazine3, "The National Geographic Traveler")
article2 = Article.new(author4, magazine4, "The Entertainment Weekly")



# search article by title
puts Article.search_by_title("The Forbes") 
puts Article.search_by_title("The Vogue")  
puts Article.search_by_title(" The Entertainment Weekly ") 
puts Article.search_by_title("The National Geographic Traveler") 



#  all Article instances
puts Article.all 

# getting  articles titles
puts article1.title 
puts article2.title 
puts article3.title 
puts article4.title 

#getting article authors
puts article1.author 
puts article2.author 
puts article3.author 
puts article4.author 

#getting article magazines
puts article1.magazine
puts article2.magazine
puts article3.magazine
puts article4.magazine

