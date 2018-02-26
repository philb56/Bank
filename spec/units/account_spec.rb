require 'account'
describe Account do
  it 'should have a name when instantiated' do
    account = new Account('Bob')
    expect(account.name).to eq 'Bob'
  end
end
