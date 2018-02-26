class Statement
  attr_reader :account
  def initialize(account)
    @account = account
  end

  def header
    'date || credit || debit || balance'
  end

  def body
    statement = ''
    @account.trx.each do | trx |
      credit = trx.amount if trx.type == 'credit'
      debit = trx.amount if trx.type == 'debit'
      statement = "#{trx.date} || #{credit} || #{debit} || #{trx.balance}"
    end
    return statement
  end
end
