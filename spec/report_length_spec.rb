require 'report_length'

describe 'report_length' do 
  it 'returns "This string was 11 characters long." when given "Hello World"' do
    expect(report_length('Hello World')).to eq "This string was 11 characters long."
  end
end