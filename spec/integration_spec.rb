=begin
require "challenge8.rb" #music_library

Rspec.describe MusicLibrary do
  context "initially" do
    it "is empty" do
      music_library = MusicLibrary.new
      expec(music_library.all).to eq []
    end
  end
end

require "chalenge8.1.rb" #track

RSpec.describe track do
  it "constructs" do
    track = Track.new("my_title")
    expect(track.title).eq "my_title"
    expect(track.title).eq "my_artist"
  end
=end

require "challenge8.rb" #music_library.rb
require "challenge8.1.rb" #track.rb

RSpec.describe "integration" do
  context "when we add tracks to the library" do
    it "comes back in the list" do
      music_library = MusicLibrary.new
      track_1 = Track.new("my_title", "my_artist")
      track_2 = Track.new("my_title", "my_artist")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.all).to eq [track_1, track_2]
    end
  end

  context "with some tracks added" do
    it "searches for those tracks by full title" do
      music_library = MusicLibrary.new
      track_1 = Track.new("my_title", "my_artist")
      track_2 = Track.new("my_title", "my_artist")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("my_title_2")
      expect(result).to eq [track_2]
    end
  end

    it "searches for those tracks by partial title" do
      music_library = MusicLibrary.new
      track_1 = Track.new("my_title_1", "my_artist_2")
      track_2 = Track.new("my_title_2", "my_artist_2")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("my_title_2")
      expect(result).to eq [track_2]
    end

  context " where there are no tracks matching" do
    it "yeilds an empty list when searching"  do
      music_library = MusicLibrary.new
      track_1 = Track.new("my_title_1", "my_artist_2")
      track_2 = Track.new("my_title_2", "my_artist_2")
      music_library.add(track_1)
      result = music_library.search_by_title("fred")
      expect(result).to eq []
    end 
  end   
end
