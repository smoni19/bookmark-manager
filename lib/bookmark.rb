class Bookmark
  attr_reader :name, :url
  
  def initialize(name,url)
    @name = name
    @url = url 
  end

  def self.all
    [
      "http://www.makersacademy.com",
      "http://www.destroyallsoftware.com",
      "http://www.google.com"
     ]
  end
end