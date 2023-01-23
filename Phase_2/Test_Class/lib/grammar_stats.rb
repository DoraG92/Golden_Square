class GrammarStats
  def initialize
    @text = []
  end

  def check(text) 
    if text[0] == text[0].upcase && (text[-1] == "." || text[-1] == "?" || text[-1] == "!")
      @text.push("true")
      return true
    else
      @text.push("false")
      return false
    end
  end

  def percentage_good
    count = 0
    @text.each do |word|
      if word == "true"
        count += 1
      end
    end
    return percentage = (count * 100) / @text.length
  end
end