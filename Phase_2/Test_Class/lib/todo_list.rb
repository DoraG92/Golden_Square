class Todo_List
  def initialize # name is a string
    @tasks = []
    @completed = []
  end

  def add(task) 
    @tasks.push(task)
    return @tasks

  end

  def complete(task)
    @completed.push(task)
    return @tasks - @completed
  end
end