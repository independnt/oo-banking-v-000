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

def do_nothing
end

def execute_transaction
  if @status == "complete"

  if self.valid?
    receiver.deposit(amount)
    sender.deduct(amount)
    @status = "complete"
  else
    "Transaction rejected. Please check your account balance."
    @status = "rejected"
end

end
