require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq!
  end
  def self.genres
    @@genres.uniq!
  end
  def self.genre_count
    genrecounts = Hash.new(0)
    @@genres.each do |genre|
      genrecounts[genre] += 1
    end
    genrecounts
  end
    def self.artist_count
    artistcount = Hash.new(0)
    @@artists.each do |artist|
      artistcount[artist] += 1
    end
    artistcount
  end
end