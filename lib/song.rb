require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre_list, genre_count|
      if genre_count.keys.include?(genre_list)
        genre_count[genre_list] = genre_count[genre_list] += 1
      else
        genre_count[genre_list] = 1
      end
    end
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist_list, artist_count|
      if artist_count.keys.include?(artist_list)
        artist_count[artist_list] = artist_count[artist_list] += 1
      else
        artist_count[artist_list] = 1
      end
    end
  end
  
end
