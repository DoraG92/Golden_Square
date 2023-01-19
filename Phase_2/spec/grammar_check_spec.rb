require 'grammar_check'

RSpec.describe 'user enters text and method returns a boolean to show wether the text is grammatically correct' do
  it 'returns true when text ends with "." and is capitalized' do
    result = grammar_check("It's sunny today.")
    expect(result).to eq true
  end
  it "returns true if text ends with an '?' and is capitalized" do
    result = grammar_check("It's sunny today?")
    expect(result). to eq true
  end

  it "returns false if text ends with an '.' and is not capitalized" do
    result = grammar_check("it's sunny today.")
    expect(result). to eq false 
  end

  it "returns false if text doesn't end punctuation mark and is capitalized " do
    result = grammar_check("It's sunny today")
    expect(result). to eq false 
  end

  it "returns true if text ends with an '!' and is capitalized" do
    result = grammar_check("It's sunny today!")
    expect(result). to eq true
  end
end