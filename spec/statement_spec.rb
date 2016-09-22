require 'statement'
require 'transaction'

describe Statement do
  account = Account.new(history_logs=Logs.new)
  account.deposit(1000)
  account.withdraw(100)

  describe 'print a statement' do
    it 'prints a header' do
      expect(subject.print_header).to eq "date || credit || debit || balance\n"
    end

    it 'prints a statement' do
      expect(subject.print_statement(history_logs)).to eq "date || credit || debit || balance\n09/21/16 ||  || 100 || 900\n09/21/16 || 1000 ||  || 1000\n"
    end

end

end
