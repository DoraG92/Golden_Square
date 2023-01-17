require 'counter'

RSpec.describe Counter do 
  it 'adds two numbers to the count' do
    counter = Counter.new
    counter.add(1)
    report = counter.add(1)
    expect(report).to eq 2 
  end

  it 'gives a report of total counter so far' do
    counter = Counter.new
    result = counter.report
  
    expect(result).to eq "Counted to 2 so far."
  end
end

    

