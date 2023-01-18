require 'present'

describe Present do
  context "No content has been wrapped" do
    it "Fails and returns error" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "Content has been wrapped" do
    it "Fails and outputs error" do
      present = Present.new
      present.wrap("toy")
      expect { present.wrap("laptop")}.to raise_error "A contents has already been wrapped."
    end

    it "wraps and unwraps content" do
      present = Present.new
      present.wrap("toy")
      expect(present.unwrap).to eq "toy"
    end
  end 
end