### Examples 

## Empty String:
diary = Diary.new
diary.all => ""

## Testing add & all method in Diary Class:
diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
diary = Diary.new
diary.add(diary_entry1)
diary.all => "Amy Sarah Jacob" 

## Testing count_words method in Diary class: 
diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow")
diary = Diary.new
diary.add(diary_entry1)
diary.add(diary_entry2)
diary.count_words => 6

## Testing reading_time method in Diary class: 
diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow")
diary = Diary.new
diary.add(diary_entry1)
diary.add(diary_entry2)
diary.count_words => 6
diary.reading_time(2) => 3 

## Testing find_best_entry_for_reading_time method in Diary class: 
diary_entry1 = DiaryEntry.new("Friends", "Amy Sarah Jacob")
diary_entry2 = DiaryEntry.new("Hello", "Red orange yellow green")
diary = Diary.new
diary.add(diary_entry1)
diary.add(diary_entry2)
diary.find_best_entry_for_reading_time(2, 2) => "Red orange yellow green"
(probably throw error when no entry matches reading time)