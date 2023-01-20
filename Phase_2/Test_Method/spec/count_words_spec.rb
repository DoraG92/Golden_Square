require 'count_words'

RSpec.describe 'takes a string as an argument and returns the number of words in string' do
  it 'returns the number of words in a string' do
    count = count_words("I love my cats")
    expect(count).to eq 4
  end

  it 'returns 0 if empty string is given' do
    count = count_words("")
    expect(count).to eq 0
  end
end