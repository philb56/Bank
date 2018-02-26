require 'transaction'
describe 'Transaction' do
  it 'should be able to add a transaction with a date, type, amount' do
    trx = Transaction.new('20/03/2018', 'debit',  1 )
    expect(trx.date).to eq '20/03/2018'
    expect(trx.type).to eq 'debit'
    expect(trx.amount).to eq 1
  end

end
