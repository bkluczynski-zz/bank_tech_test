require 'account'

describe Account do

describe 'deposit' do
  it 'adds chosen amount to the balance' do
    subject.deposit(10)
    expect(subject.balance).to eq 10
  end
end

describe 'withdraw' do
  it 'deducts chosen amount from the balance' do
    subject.deposit(20)
    subject.withdraw(20)
    expect(subject.balance).to eq 0
  end
end

describe 'adding transcation' do
  it 'adds a transcation into transactions when increasing deposit' do
    expect{subject.deposit(20)}.to change{subject.transactions.length}.from(0).to(1)
  end
  it 'adds a transcation into transactions when deducting money' do
    subject.deposit(20)
    expect{subject.withdraw(20)}.to change{subject.transactions.length}.from(1).to(2)
  end
end










end
