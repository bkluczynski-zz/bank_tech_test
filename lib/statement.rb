class Statement

def print_header
  p "date || credit || debit || balance\n"
end

def print_statement(history_logs)
  show = ''
  history_logs.logs.reverse.each do |transaction|
  show += "#{transaction.date.to_s} || #{transaction.credit.to_s} || #{transaction.debit.to_s} || #{transaction.balance.to_s}\n"
  end
  print_header + show
end

end
