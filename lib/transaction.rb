class Transaction

attr_reader :credit, :debit, :balance, :date

  def initialize(credit: nil, debit: nil, balance: nil)
    @credit = credit;
    @debit = debit;
    @balance = balance;
    @date = Time.new.strftime("%m/%d/%y")
  end



end
