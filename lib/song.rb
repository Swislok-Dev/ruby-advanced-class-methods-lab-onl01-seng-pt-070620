class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name
    @@all.each do |x|
      if x.name == x
        puts x.name
      end
    end

  def self.alphabetical
    @@all.sort_by {|x| x.name}
  end

  def self.new_from_filename(name, artist_name)
    song = Song.new(name)
    song.name = song.split(" - ")[1].chomp(".mp3")
    song.artist_name = song.split(" - ")[0]
    song
  end
end
