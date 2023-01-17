require 'check_codeword'

describe 'check_codeword' do 
  it 'returns "Correct! Come in." when given "horse"' do
    expect(check_codeword('horse')).to eq "Correct! Come in."
  end
end

describe 'check_codeword' do 
  it 'returns "Close, but nope." when given "hearse"' do
    expect(check_codeword('hearse')).to eq "Close, but nope."
  end
end

describe 'check_codeword' do 
  it 'returns "WRONG!" when given "dog"' do
    expect(check_codeword('dog')).to eq "WRONG!"
  end
end