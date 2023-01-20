require 'diary_entry'

RSpec.describe DiaryEntry do
  context 'Create a new class' do
    it 'initializes' do
        diary = DiaryEntry.new("Monday", "Foggy")
        expect(diary.title).to eq "Monday"
        expect(diary.contents).to eq "Foggy"
    end
  end 
  
  context "it is given an empty string" do
    it "returns 0"do
    diary = DiaryEntry.new("Monday", " ")
    expect(diary.count_words).to eq 0
    end
  end

  context "it is given a string of 5 words" do
    it "returns 5" do
    diary = DiaryEntry.new("Monday", "hello diary, how are you?")
    expect(diary.count_words).to eq 5
    end
  end

  context "it is given a string of 200 words" do
    it "returns 200" do
    diary = DiaryEntry.new("Monday", ("hello " * 200))
    expect(diary.count_words).to eq 200
    end
  end

  context "it is given a string of 100 words and wpm of 200" do
    it "returns 1" do
    diary = DiaryEntry.new("Monday", ("hello " * 100))
    expect(diary.reading_time(200)).to eq 1
    end
  end

  context "it is given a string of 200 words and wpm of 100" do
    it "returns 2" do
    diary = DiaryEntry.new("Monday", ("hello " * 200))
    expect(diary.reading_time(100)).to eq 2
    end
  end

  context "it is given an empty string" do
    it "returns 0" do
    diary = DiaryEntry.new("Monday", " ")
    expect(diary.reading_time(200)).to eq 0
    end
  end

  context "it is given a string of 200 words and wpm of 200" do
    it "returns 1" do
    diary = DiaryEntry.new("Monday", ("hello " * 200))
    expect(diary.reading_time(200)).to eq 1
    end
  end

  context "it is given a string of 290 words and wpm of 200" do
    it "returns 2" do
    diary = DiaryEntry.new("Monday", ("hello " * 290))
    expect(diary.reading_time(200)).to eq 2
    end
  end

  context "it is given the time of 5 minutes with a wpm of 200" do
    it 'returns hello how' do
      diary = DiaryEntry.new("Monday", ("hello how are you"))
      expect(diary.reading_chunk(2,1)).to eq ("hello how")
    end
  end
  context "it is asked for the second chunk" do
    it 'returns are you' do
      diary = DiaryEntry.new("Monday", ("hello how are you"))
      diary.reading_chunk(2,1)
      expect(diary.reading_chunk(2,1)).to eq ("are you")
    end
  end

  context "it is asked for the third time" do
    it 'returns hello how' do
      diary = DiaryEntry.new("Monday", ("hello how are you"))
      diary.reading_chunk(2,1)
      diary.reading_chunk(2,1)
      expect(diary.reading_chunk(2,1)).to eq ("hello how")
    end
  end
end