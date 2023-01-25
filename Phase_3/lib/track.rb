class Track
  def initialize(title, artist) 
    @title = title
    @artist = artist
    # title and artist are both strings
  end

  def matches?(keyword) 
    if @title.include?(keyword)
      return true
    elsif @artist.include?(keyword)
      return true
    else
      return false
    end
    # @title.include?(keyword) || @artist.include?(keyword)

    # keyword is a string
    # Returns true if the keyword matches either the title or artist
  end
end