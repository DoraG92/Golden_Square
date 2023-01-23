require 'grammar_stats'

RSpec.describe GrammarStats do
  context 'returns true when text is capitalized and ends with a punctuation mark' do
    it 'returns true when text ends with "." and is capitalized' do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("It's sunny today!")).to eq true
    end
  end

  context 'returns false when text is not capitalized and ends with a punctuation mark ' do
    it "returns false if text ends with an '.' and is not capitalized" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("it's sunny today.")).to eq false
    end
  end

  
  context 'returns false when text is capitalized and does not end with punctuation mark' do
    it "returns false if text doesn't end punctuation mark and is capitalized " do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("It's sunny today")).to eq false
    end
  end

  context 'returns the percentage as an integer when text is both capitalized and ends with punctuation mark' do
    it 'returns integer' do
      grammar_stats = GrammarStats.new
      grammar_stats.check("It's sunny today!")
      grammar_stats.check("It's sunny today.")
      grammar_stats.check("it's sunny today?")
      grammar_stats.check("It's sunny today")
      expect(grammar_stats.percentage_good).to eq 50
    end
  end
  context 'returns the percentage as an integer when text is both capitalized and ends with punctuation mark' do
    it 'returns integer' do
      grammar_stats = GrammarStats.new
      grammar_stats.check("It's sunny today!")
      grammar_stats.check("It's sunny today.")
      grammar_stats.check("It's sunny today?")
      expect(grammar_stats.percentage_good).to eq 100
    end
  end

end