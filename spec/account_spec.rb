require 'account'

  describe Account do

      it { is_expected.to respond_to(:deposit).with(1).argument }
      it { is_expected.to respond_to(:withdraw).with(1).argument }
      let(:credit) {double :tran, credit: 10000, balance: 10000}
      let(:debit) {double :tran, debit: 10000, balance: 10000}


        describe 'operations on the bank account' do
          context 'deposit' do
            it 'increases the balance by the amount of deposit' do
              subject.deposit(50)
          expect(subject.balance).to eq 50
        end
      end

        context 'withdrawal' do
          it 'decreases the balance by the amount of withdrawal' do
            subject.deposit(30)
            subject.withdraw(30)
          expect(subject.balance).to eq 0
        end
      end

        context 'user does not have enough to withdraw the desired amount' do
          it 'gives a user the  error message' do
          expect { subject.withdraw(10) }.to raise_error 'Not enough funds to proceed with operation'
          end
        end

        context 'user type the negative value to deposit or withdraw' do
          it 'gives a user the error message' do
            expect { subject.deposit(-10) }.to raise_error 'Please insert the correct value'
            expect { subject.withdraw(-10) }.to raise_error 'Please insert the correct value'
          end
        end

        context 'user deposits the money' do
          it 'shows the amount of credit' do
          subject.history_logger.add_transaction(credit)
          expect(subject.history_logger.transactions).to eq [credit]
          end
        end

        context 'user withdraws the money' do
          it 'shows the amount of deposit' do
          subject.history_logger.add_transaction(debit)
          expect(subject.history_logger.transactions).to eq [debit]
          end
        end




      end










end
