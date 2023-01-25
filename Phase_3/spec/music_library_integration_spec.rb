require 'track'
require 'music_library'

RSpec.describe 'integration' do
  
  it "add and lists tracks" do
    music_library = MusicLibrary.new
    track_1 = Track.new("title 1", "artist 1")
    music_library.add(track_1)
    track_2 = Track.new("title 2", "artist 2")
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "searches tracks by keyword" do
    music_library = MusicLibrary.new
    track_1 = Track.new("title 1", "artist 1")
    music_library.add(track_1)
    track_2 = Track.new("title 2", "artist 2")
    music_library.add(track_2)
    expect(music_library.search("2")).to eq [track_2]
  end
  
end