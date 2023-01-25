class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track)
    @tracks.push(track)
    # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    return @tracks
    # Returns a list of track objects
  end
  
  def search(keyword) 
    
    new_list = @tracks.select do |track|
        track.matches?(keyword)
    end

    return new_list

    # keyword is a string
    # Returns a list of tracks that match the keyword
  end
end