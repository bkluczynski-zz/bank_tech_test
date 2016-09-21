class Account

attr_reader :balance, :transactions

def initialize
@balance = 0
@transactions = []
end

def deposit(amount)
@balance += amount
@transactions << {type: "credit", amount: amount, date: Time.now.strftime("%d/%m/%Y"), balance: @balance}
end

def withdraw(amount)
@balance -= amount
@transactions << {type: "debit", amount: amount, date: Time.now.strftime("%d/%m/%Y"), balance: @balance}
end

def print_statement
  print_headers
  @transactions.reverse.each do |transaction|
  if transaction[:type] == 'debit'
    p transaction[:date].to_s + " ||    || " + transaction[:amount].to_s + " || " + transaction[:balance].to_s
  else
    p transaction[:date].to_s + " || " + transaction[:amount].to_s + " ||    || " + transaction[:balance].to_s
  end

end
  p "You have no more transaction to show"
end

private

def print_headers
  puts "data || credit || debit || balance"
end

end
