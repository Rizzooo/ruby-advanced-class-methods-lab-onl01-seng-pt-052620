class Song
  attr_accessor :name, :artist_name
  
  @@all = []

  def self.create
    @@all << self.new
    @@all[0]
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.new_by_name(song_name)
    song_title = self.new
    song_title.name = song_name
    song_title
  end
  
  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end
  
  def self.find_by_name(song_name)
    answer = self.all.detect {|x| x.name == song_name}
    answer
  end
  
  def self.find_or_create_by_name
    answer = self.find_by_name(song_name)
      if answer
        answer
      else
        self.create_by_name
      end
  end
  

end
