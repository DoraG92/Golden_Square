require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour

  describe "#all" do

    context "there are multiple tasks" do
      
      it "return the list of tasks" do
        task_list = TaskList.new
        task_1 = double :task
        task_list.add(task_1)
        task_2 = double :task
        task_list.add(task_2)
        expect(task_list.all).to eq [task_1, task_2]
      end


    end
    context "there is only one task" do
      
      it "return one task in a list of tasks" do
        task_list = TaskList.new
        task_1 = double :task
        task_list.add(task_1)
        expect(task_list.all).to eq [task_1]
      end
    end
  end
    
  describe "#all_complete?" do

    context "all tasks complete" do

      it "return true" do
        task_list = TaskList.new
        task_1 = double :task
        expect(task_1).to receive(:complete?).and_return(true)
        task_list.add(task_1)
        task_2 = double :task
        expect(task_2).to receive(:complete?).and_return(true)
        task_list.add(task_2)
        expect(task_list.all_complete?).to eq true
      end
    end

    context "none tasks complete" do
      
      it "return false" do
        task_list = TaskList.new
        task_1 = double :task
        expect(task_1).to receive(:complete?).and_return(false)
        task_list.add(task_1)
        expect(task_list.all_complete?).to eq false
      end
    end

    
    context "some tasks complete" do
      it "return false" do
        task_list = TaskList.new
        task_1 = double :task
        expect(task_1).to receive(:complete?).and_return(true)
        task_list.add(task_1)
        task_2 = double :task
        expect(task_2).to receive(:complete?).and_return(false)
        task_list.add(task_2)
        expect(task_list.all_complete?).to eq false
      end
    end
  end
end