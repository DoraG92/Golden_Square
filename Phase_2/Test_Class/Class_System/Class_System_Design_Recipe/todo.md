### Examples

## Empty String:
todo = Todo.new
todo.task => ""

## Testing for incomplete Method
todolist = TodoList.new
todo1 = Todo.new("Laundry")
todolist.add(todo1)
todolist.incomplete => "Laundry"

## Testing for complete Method
todolist = TodoList.new
todo1 = Todo.new("Laundry")
todo.mark_done!
todolist.add(todo1)
todolist.complete => "Laundry"

## Testing give_up! Method

todolist = TodoList.new
todo1 = Todo.new("Laundry")
todo2 = Todo.new("Dishes")
todolist.add(todo1)
todolist.add(todo2)
todolist.giveup! => "#{todo1} and #{todo2} have been marked as complete" // "All todos have been marked as complete"

## Testing mark_done! and done? Methods

todolist = TodoList.new
todo1 = Todo.new("Laundry")
todo1.mark_done!
todo1.done? => true 

todolist = TodoList.new
todo1 = Todo.new("Laundry")
todo2 = Todo.new("Dishes")
todo2.mark_done!
todo1.done? => false 




