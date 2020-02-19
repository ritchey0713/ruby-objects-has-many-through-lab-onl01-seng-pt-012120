require "pry"

class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self }
  end 
  
  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end 
  
  def genres 
    # Genre.all.select {|genre| genre.artist == self }
    self.songs.map { |song| song.genre }
  end 
  
end 



# artist1 = Artist.new("Jay-Z")

# genre1 = Genre.new("rap")


# # joins it joins the other classes
# # joins belongs to both other classes 
# # belongs to has to be assigned on init 
# song1 = Song.new("shrimp", artist1, genre1)
















