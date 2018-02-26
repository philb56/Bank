require 'account'
describe Account do
  let(:trx) { double :transaction, date: '20/3/2018', type: 'debit', amount: 1}
  subject :account {described_class.new('Bob')}

  it 'should have a name when instantiated' do
    expect(account.name).to eq 'Bob'
  end

  it 'should have a array of Transactions when instantiated' do
    expect(account.trx).to eq []
  end

  it 'can add a debit transaction to trx' do
    account.transact(trx)
    expect(account.trx[0]).to eq trx
  end


end
