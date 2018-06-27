class Genre

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    song = Song.new(name, artist)
    @songs << song
    song.Genre = self
  end

end
