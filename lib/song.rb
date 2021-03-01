

class Song

attr_accessor :name, :artist

@@all = []
    def initialize(name)
        @name = name 
        @artist = artist 
        @@all << self 
       
    end 

def artist=(artist)
    @artist = artist
end 

def self.all
    @@all
end 

def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(filename)
    filename = new_song.artist 
end 


def artist_name=(name)
    self.artist = Artist.find(name) || Artist.create(name)
  end

end 
 