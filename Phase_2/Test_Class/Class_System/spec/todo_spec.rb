require 'todo'

RSpec.describe Todo do
  it 'returns an empty string when no todo is added' do
    todo = Todo.new("")
    expect(todo.task).to eq ""
  end

  it 'returns true if a task is marked done' do 
    todo = Todo.new("Laundry")
    todo.mark_done!
    expect(todo.done?).to eq(true)
  end 

  it 'returns true if a task is marked done' do 
    todo = Todo.new("Laundry")
    expect(todo.done?).to eq(false)
  end
end