# Statement has responsibility for outputting details for the Account
class Statement
  attr_reader :account
  def initialize(account)
    @account = account
  end

  def statement
    header + body
  end

  def puts_statement
    puts statement
  end

  def header
    'date || credit || debit || balance' + "\n"
  end

  def body
    statement = ''
    @account.trx.each do |trx|
      statement += "#{trx.date} ||" +
                   amount(trx.amount, trx.type) +
                   "|| #{trx.balance}" + "\n"
    end
    statement
  end

  private

  def amount(amount, type)
    cr = amount if type == 'credit'
    db = amount if type == 'debit'
    " #{cr} || #{db} "
  end
end
