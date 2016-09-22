
class Account

  attr_reader :balance, :history_logs

  def initialize(history_logs = Logs.new, statement = Statement.new)
    @balance = 0
    @history_logs = history_logs
    @statement = statement
  end


  def deposit(amount)
    @balance += amount
    @history_logs.add_transaction(Transaction.new(credit: amount, balance: @balance))
  end

  def withdraw(amount)
    @balance -= amount
    @history_logs.add_transaction(Transaction.new(debit: amount, balance: @balance))
  end

  def statement
    @statement.print_statement(@history_logs)
  end




end
