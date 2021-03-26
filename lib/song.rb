class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count={}
  @@artist_count={}
  attr_reader :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@artists << @artist
    @@genres << @genre
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @genre_counter=0
    @@genres.map do |genre|
      @genre_counter+=1
      @@genre_count[genre]=@genre_counter
    end
  end
  
  def self.artist_count
    
  end
end