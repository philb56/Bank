# Account has responsibility for account detail eg name, all transactions
class Account
  attr_reader :name, :trx

  def initialize(name)
    @name = name
    @trx = []
  end

  def transact(trx)
    trx.calculate_balance(balance)
    @trx << trx
  end

  def balance
    return @trx[@trx.length - 1].balance unless @trx.length.zero?
    0
  end
end
