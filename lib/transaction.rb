class Transaction
  attr_reader :date, :type, :amount, :balance
  def initialize(date, type, amount, balance = 0)
    @date = date
    @type = type
    @amount = amount
    @balance = balance + (type === 'debit' ? -amount : amount )
  end

  def calculate_balance(balance)
    @balance = balance + (type === 'debit' ? -amount : amount )
  end

end
