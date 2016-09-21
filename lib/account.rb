class Account

attr_reader :balance


def initialize
@balance = 0
end


def deposit(amount)
positive_integer(amount)
@balance += amount
end

def withdraw(amount)
positive_integer(amount)
fail 'Not enough funds to proceed with operation' if @balance - amount < 0
@balance -= amount
end


private


def positive_integer(amount)
fail 'Please insert the correct value' if amount <= 0
end

end
