require 'account'
describe Account do
  subject :account {described_class.new('Bob')}

  it 'should have a name when instantiated' do
    expect(account.name).to eq 'Bob'
  end

  it 'should have a array of Transactions when instantiated' do
    expect(account.trx).to eq []
  end


end
