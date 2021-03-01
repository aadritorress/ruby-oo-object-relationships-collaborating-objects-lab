class Artist

    attr_accessor :name 

    @@all = []

def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
end 

def name=(name)
    @name=name 
end 

def self.all
    @@all
end


def songs
songs = []
Song.all.each do |song|
    if song.artist == self 
        songs << song
    end 
end 
songs
    # Song.all.map { |song| song.artist == self }
end 

def add_song(song)
    song.artist = self
end 



def self.find_or_create_by_name(name)
    @@all.find do |artist|
 if artist == nil
    self.create(name)
  else
    @artist
  end
end

    # if artist.name == nil 
    #     artist.create
    # else 
    #     return artist
    # end 



#   Artist.all.find do |artist|
#     if artist.name == self
#         return name 
#     else 
#         self.create(name)
#     end 
end 


def print_songs
    songs.each do |song|
        puts song.name
        # songs.each { |song| puts song.name }
  end
end



end 