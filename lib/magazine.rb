require_relative 'author'
require_relative 'article'

class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.search_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end
  
    def article_titles
      Article.all.select { |article| article.magazine == self }.map { |article| article.title }
    end
  
    def contributing_authors
      Article.all.select { |article| article.magazine == self }.group_by { |article| article.author }
                 .select { |author, articles| articles.size > 2 }.keys
    end
end
  

# Create a new Magazine instance
magazine1 = Magazine.new("The NAIROBIAN", "Lifestyle and Fashion")
magazine2 = Magazine.new("Science News", "Business and Finance")
magazine3 = Magazine.new("National Geographic Traveler", "Travel and Food")
magazine4 = Magazine.new("Entertainment Weekly", "Arts and Entertainment")

# Geting  the magazines names
puts magazine1.name
puts magazine2.name
puts magazine3.name
puts magazine4.name

#getting magazines category
puts magazine1.category 
puts magazine2.category 
puts magazine3.category 
puts magazine4.category 

# Geting all Magazine instances
puts Magazine.all 

# Geting the magazine's contributors 
puts magazine1.contributing_authors

# Getting the magazine's  articles
puts magazine1.articles 
