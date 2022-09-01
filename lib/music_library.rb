# File: lib/music_library.rb
class MusicLibrary
    def initialize
      @tracks = []
    end
  
    def add(track) # track is an instance of Track
      @tracks << track
        # Track gets added to the library
      # Returns nothing
    end
  
    def all
      return @tracks  
        # Returns a list of track objects
    end
    
    def search_by_title(keyword) # keyword is a string
      return @tracks.select do |track|
        track.title.include?(keyword) # Returns a list of tracks with titles that include the keyword
    end
  end
