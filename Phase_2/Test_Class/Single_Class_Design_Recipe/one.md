# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

User wants a program that can add todo tasks and see them as a list and also mark them as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Todo_List
  def initialize # name is a string
    @tasks = []
  end

  def add(task) # task is a string
    # return list of tasks
  end

  def complete(task)
    # remove completed tasks
    # return list minus completed tasks
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby

# 1
todo = Todo_list.New
todo.add("Walk the dog") => ["Walk the dog"]

# 2
todo = Todo_list.new
todo.add("Buy milk")
todo.add("Wash the dishes")
todo.add => ["Buy milk", "Wash the dishes"]

# 3
todo = Todo_list.new
todo.complete("Buy milk") => ["Wash the dishes"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

