require 'gratitudes'

RSpec.describe Gratitudes do
  it 'adds a list of gratitudes to an array and returns a string' do
    gratitude = Gratitudes.new
    gratitude.add("friends")
    result = gratitude.format
    expect(result).to eq "Be grateful for: friends"
  end
end