class Logs

attr_reader :logs

def initialize
  @logs = []
end

def add_transaction(transaction)
  @logs << transaction
end



end
