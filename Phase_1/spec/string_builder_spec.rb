require 'string_builder'

RSpec.describe StringBuilder do
  it "adds two strings together and returns the string length" do
    string_builder = StringBuilder.new
    string_builder.add("Hello")
    output = string_builder.size
    expect(output).to eq 5
  end
end