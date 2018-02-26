require 'account'
require 'transaction'

describe Account do

  it 'can determine current balance after a single transaction' do
    trx = Transaction.new('22/3/2018', 'debit', 1)
    account = Account.new('Bob')
    account.transact(trx)
    expect(account.balance).to eq -1
  end

  it 'can determine current balance after two transactions of different types' do
    trx_debit = Transaction.new('22/3/2018', 'debit', 1)
    trx_credit = Transaction.new('22/3/2018', 'credit', 1)
    account = Account.new('Bob')
    account.transact(trx_credit)
    account.transact(trx_debit)
    expect(account.balance).to eq 0
  end
end
