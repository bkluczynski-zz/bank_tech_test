require 'transaction'

describe Transaction do

  it { is_expected.to respond_to(:date) }
  it { is_expected.to respond_to(:debit) }
  it { is_expected.to respond_to(:credit) }
  it { is_expected.to respond_to(:balance) }





end
