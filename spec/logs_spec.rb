require 'logs'

describe Logs do

  describe 'transactions storing' do
    it 'starts as an empty array' do
      expect(subject.logs).to be_empty
    end

    it 'can store a transaction' do
      transaction = double("transaction")
      expect{ subject.add_transaction(transaction) }.to change{ subject.logs.count }.from(0).to(1)
    end
  end 



end
