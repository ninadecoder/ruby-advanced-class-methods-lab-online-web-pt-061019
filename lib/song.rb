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
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(string_name)
    song = self.new 
    song.name = string_name
    song
  end
  
  def self.create_by_name(create_name)
    song = self.new 
    song.name = create_name
    song.save 
    song
  end
  
  def self.find_by_name(name)
    @@all.each do |song|
      if song.name == name
        return song
      end 
    end
  end 
  
 def self.find_or_create_by_name(find_this_song)
    did_i_find_it = self.all.detect {|x| x.name == find_this_song}
    if did_i_find_it == nil
      s = self.new 
      s.name = find_this_song
      s.save 
      s
    else
      did_i_find_it
    end
  end 
  
end
