class HistoryLogger

attr_reader :transactions

  def initialize
    @transactions = []
  end


  def add_transaction(transaction)
    @transactions << transaction
  end


end
