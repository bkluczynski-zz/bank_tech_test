require 'account'

  describe Account do

      it { is_expected.to respond_to(:deposit).with(1).argument }
      it { is_expected.to respond_to(:withdraw).with(1).argument }

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


  end





end
