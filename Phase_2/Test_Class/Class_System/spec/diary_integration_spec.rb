require 'diary'
require 'diary_entry'

RSpec.describe 'Integration' do
  it 'returns an empty array when there are no diary entries' do 
    diary = Diary.new
    expect(diary.all).to eq []
  end

  it 'returns 1 diary entry when 1 has been added' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow")
    diary.add(diary_entry1)
    diary.add(diary_entry2)

    expect(diary.all).to eq [diary_entry1, diary_entry2]
  end

  it 'returns 2 diary entries when 2 have been added' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
    diary.add(diary_entry1)
    expect(diary.all).to eq [diary_entry1]
  end

  it 'returns a total word count of 2 diary entries when 2 have been added' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.count_words).to eq 6
  end

  it 'returns the reading time for all diary entries that have been added' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    diary.count_words
    expect(diary.reading_time(2)).to eq 3
  end

  it 'finds the best diary entry for the reading time available' do
    diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
    diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow green")
    diary = Diary.new
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.find_best_entry_for_reading_time(2, 2)).to eq diary_entry2
  end
end   