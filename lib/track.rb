class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def format
    return "#{@title} by #{@artist}"
  end

  def title
    return @title
  end

  def artist
    return @artist
  end
end
