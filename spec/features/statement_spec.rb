require 'account'
require 'transaction'
require 'statement'

describe Statement do
  it "should be able to output credit trx" do
    trx = Transaction.new('20/03/2018', 'credit',  1 )
    account = Account.new('Bob')
    account.transact(trx)
    statement = Statement.new(account)
    expect(statement.body).to eq '20/03/2018 || 1 ||  || 1'
  end

  it "should be able to output credit trx" do
    trx = Transaction.new('20/03/2018', 'debit',  1 )
    account = Account.new('Bob')
    account.transact(trx)
    statement = Statement.new(account)
    expect(statement.body).to eq '20/03/2018 ||  || 1 || -1'
  end
end