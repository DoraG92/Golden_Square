class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @furthest_read = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    count = @contents.split(" ").length
  end

  def reading_time(wpm) 
    words = @contents.split(" ")
    time = (words.length / wpm.to_f).ceil
    return time

  def reading_chunk(wpm, minutes)
     words_allowed = wpm * minutes 
     words =  @contents.split(" ")
     word_list = words[@furthest_read, words_allowed]
    if (@furthest_read + words_allowed) >= count_words
      @furthest_read = 0
    else
     @furthest_read = @furthest_read + words_allowed
    end
    return word_list.join(" ")
  end
end