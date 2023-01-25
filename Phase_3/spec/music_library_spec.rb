require 'music_library'

RSpec.describe MusicLibrary do
  
  it "add and lists tracks" do
    music_library = MusicLibrary.new
    track_1 = double :track
    music_library.add(track_1)
    track_2 = double :track
    music_library.add(track_2)
    expect(music_library.all).to eq [track_1, track_2]
  end

  it "searches tracks by keyword" do
    music_library = MusicLibrary.new
    track_1 = double :track
    # our pretend track will behave like
    # track_1.matches?("2") => false
    expect(track_1).to receive(:matches?).with("2").and_return(false)
    music_library.add(track_1)
    track_2 = double :track
    expect(track_2).to receive(:matches?).with("2").and_return(true)
    music_library.add(track_2)
    expect(music_library.search("2")).to eq [track_2]
  end
  
  
end