class Account

  attr_reader :name, :trx

  def initialize(name)
    @name = name
    @trx = []
  end
end
