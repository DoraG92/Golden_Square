def get_most_common_letter(text)
  text.gsub!(/[^a-zA-Z]/, '') # replacing anything outside of a-z & A-z and replacing it with nothing
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
   counter.to_a.sort_by { |k, v| v }[-1][0] # accessing the "o"
end

p get_most_common_letter("the roof, the roof, the roof is on fire!") # outputing the result 