class Statement
  attr_reader :account
  def initialize(account)
    @account = account
  end

  def statement
    header + body
  end

  def header
    'date || credit || debit || balance' + "\n"
  end

  def body
    statement = ''
    @account.trx.each do | trx |
      credit = trx.amount if trx.type == 'credit'
      debit = trx.amount if trx.type == 'debit'
      statement += "#{trx.date} || #{credit} || #{debit} || #{trx.balance}"
      statement += "\n"
    end
    return statement
  end
end
