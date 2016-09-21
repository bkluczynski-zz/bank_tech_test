class Account

attr_reader :balance, :history_logger


  def initialize(history_logger = HistoryLogger.new)
  @balance = 0
  @history_logger = history_logger
  end


  def deposit(amount)
  positive_integer(amount)
  @balance += amount
  @history_logger.add_transaction(Transaction.new(credit: amount, balance: @balance ))
  end

  def withdraw(amount)
  positive_integer(amount)
  fail 'Not enough funds to proceed with operation' if @balance - amount < 0
  @balance -= amount
  @history_logger.add_transaction(Transaction.new(debit: amount, balance: @balance ))
  end


  private


  def positive_integer(amount)
  fail 'Please insert the correct value' if amount <= 0
  end

end
