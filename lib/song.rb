require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = []
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
  end

end