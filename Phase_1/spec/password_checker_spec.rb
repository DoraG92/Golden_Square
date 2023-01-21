require 'password_checker'

RSpec.describe PasswordChecker do
  context 'password is correct' do
    it 'returns true when password equal or greater than 8 characters' do
    password = PasswordChecker.new
    expect(password.check("mountain")).to eq true 
    end
  end
  context 'password is not correct' do
    it 'fails and outputs error when password is less then 8 characters' do
      password = PasswordChecker.new
      expect { password.check("mountai")}.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end

