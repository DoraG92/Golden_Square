require 'counter'

RSpec.describe Counter do 
  it 'adds two numbers to the count' do
    counter = Counter.new
    counter.add(2)
    expect(counter.instance_variable_get(:@count)).to eq 2
  end

  it 'gives a report of total counter so far' do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it 'can add negative numbers' do
    counter = Counter.new
    counter.add(10)
    counter.add(-5)
    expect(counter.instance_variable_get(:@count)).to eq 5
  end
end

    

