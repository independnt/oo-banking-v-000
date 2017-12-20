class Transfer

  attr_reader :sender, :receiver, :amount, :status


def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = amount
end

def valid?
  if sender.valid? && receiver.valid?
end

def execute_transaction
  receiver.deposit(amount)
  sender.deduct(amount)
  @status = "complete"
end

end
