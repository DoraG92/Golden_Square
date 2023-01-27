require 'cat_facts'

RSpec.describe CatFacts do 
  it "calls an API to provide a cat fact" do
    requester = double :requester
    expect(requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Some common houseplants poisonous to cats include: English Ivy, iris, mistletoe, philodendron, and yew.","length":103}')
    cat_facts = CatFacts.new(requester)
    result = cat_facts.provide
    expect(result).to eq "Cat fact: Some common houseplants poisonous to cats include: English Ivy, iris, mistletoe, philodendron, and yew."
  end
end