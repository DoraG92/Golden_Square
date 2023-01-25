require 'track'

RSpec.describe Track do 

  it "constructs" do

    expect(Track.new("title","artist")).to be
    
  end

  describe "#matches?" do

    context "keyword exists in title" do
      
      it "returns true" do
        track = Track.new("title", "artist")
        expect(track.matches?("title")).to eq true
      end

    end

    context "keyword exists in artist" do
      
      it "returns true" do
        track = Track.new("title", "artist")
        expect(track.matches?("artist")).to eq true
      end

    end
    
    context "keyword does not exist in title or artist" do
      
      it "returns false" do
        track = Track.new("title", "artist")
        expect(track.matches?("hello")).to eq false
      end

    end
  



  end

end