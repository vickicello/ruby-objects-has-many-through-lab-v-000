class Genre

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    song = Song.new(name, artist)
    @songs << song
    song.Genre = self
  end

  def songs
    @songs.select do |song|
      song.name == name
    end
  end

  def artists
    @songs.collect do |artist|
      song.artist == artist
    end
  end

end
