require 'todo_list'

RSpec.describe Todo_List do
  it 'adds a task to the list and returns list' do
    todo_list = Todo_List.new
    result = todo_list.add("Walk the dog")
    result = todo_list.add("Buy milk")
    result = todo_list.add("Wash the dishes")
    expect(result).to eq ["Walk the dog", "Buy milk", "Wash the dishes"]
  end

  it 'marks a task as complete and returns list minus completed tasks' do
    todo_list = Todo_List.new
    result = todo_list.add("Walk the dog")
    result = todo_list.add("Buy milk")
    result = todo_list.add("Wash the dishes")
    completed = todo_list.complete("Walk the dog")
    expect(completed).to eq ["Buy milk", "Wash the dishes"]
  end
end
