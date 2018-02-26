require 'account'
require 'transaction'
require 'statement'
describe Statement do
  it 'should be able to output credit trx' do
    trx = Transaction.new('20/03/2018', 'credit', 1)
    account = Account.new('Bob')
    account.transact(trx)
    statement = Statement.new(account)
    expect(statement.body).to eq '20/03/2018 || 1 ||  || 1' + "\n"
  end

  it 'should be able to output credit trx' do
    trx = Transaction.new('20/03/2018', 'debit', 1)
    account = Account.new('Bob')
    account.transact(trx)
    statement = Statement.new(account)
    expect(statement.body).to eq '20/03/2018 ||  || 1 || -1' + "\n"
  end

  it 'should be able to output two trxs' do
    trx_credit = Transaction.new('20/03/2018', 'credit', 1)
    trx_debit = Transaction.new('20/03/2018', 'debit', 1)
    account = Account.new('Bob')
    account.transact(trx_credit)
    account.transact(trx_debit)
    statement = Statement.new(account)
    expect(statement.body).to eq '20/03/2018 || 1 ||  || 1' + "\n" \
                                 '20/03/2018 ||  || 1 || 0' + "\n"
  end

  it 'should be able to output a whole statement for two trxs' do
    trx_credit = Transaction.new('20/03/2018', 'credit', 1)
    trx_debit = Transaction.new('20/03/2018', 'debit', 1)
    account = Account.new('Bob')
    account.transact(trx_credit)
    account.transact(trx_debit)
    statement = Statement.new(account)
    expect(statement.statement).to eq 'date || credit || debit || balance' \
                                      "\n" \
                                      '20/03/2018 || 1 ||  || 1' + "\n" \
                                      '20/03/2018 ||  || 1 || 0' + "\n"
  end
end
