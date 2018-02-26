class Account

  attr_reader :name, :trx

  def initialize(name)
    @name = name
    @trx = []
  end

  def transact(trx)
    @trx << trx
  end
end
