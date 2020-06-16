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
    
    #answer = self.all.select {|song| song.name == name}
    #answer[0]
  end
  
  def self.find_or_create_by_name(name)
    answer = self.find_by_name(name)
      if answer
        answer
      else
        self.create_by_name
        self
      end
  end
  

end
