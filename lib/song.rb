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
  
  def self.new_by_name(name)
    title = self.new
    title.name = name
    title
  end
  
  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end
  
  def self.find_by_name(name)
    self.all.find(&:name)
  end
  
  def self.find_or_create_by_name(name)
    if find_by_name(name)
      find_by_name(name)
    else
      create_by_name(name)
    end
  end
  
  def
    self.all.sort_by {|
  end
  

end
