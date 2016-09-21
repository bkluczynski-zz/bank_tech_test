require 'history_logger'

describe HistoryLogger do

  it { is_expected.to respond_to(:add_transaction) }

  describe 'logging transactions' do
    context 'no transactions has been made' do
      it 'does not show any transactions' do
        expect(subject.transactions).to be_empty
      end
    end


    context 'transaction has been made' do
      it 'adds a transaction to the transactions register' do
        transaction = double("tran")
        subject.add_transaction(transaction)
        expect(subject.transactions).not_to be_empty
      end
    end

    context 'multiple transactions have been made' do
      it 'allows to store many transactions' do
      transaction = double("tran")
      transaction2 = double("tran2")
      subject.add_transaction(transaction)
      subject.add_transaction(transaction2)
      expect(subject.transactions.length).to eq 2
      end
    end
  end
end
