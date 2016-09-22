require 'account'

describe Account do
  let(:credit) {double :transaction, :credit => 1000, :balance =>100}


describe 'deposit' do

    it 'allows to deposit the money' do
      subject.deposit(40)
      expect(subject.balance).to eq 40
    end

    it 'allows to add your transaction to logs' do
      subject.history_logs.add_transaction(credit)
      expect(subject.history_logs.logs).to eq [credit]
      end
    end

  describe 'witdraw' do
    it 'allows to withdraw the money' do
      subject.deposit(40)
      subject.withdraw(20)
      expect(subject.balance).to eq 20
    end
  end






end
