class Transfer
  # your code here
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
    @count = 0
  end
  
  def valid?
    if sender.valid? && receiver.valid?
      true
    end
  end
  
  def execute_transaction
    if sender.balance >= @amount
      while @count < 1 do
        sender.balance -= @amount
        receiver.balance += @amount
        @status = 'complete'
        @count +=1
      end
    elsif
      "Transaction rejected. Please check your account balance."
      @status = 'rejected'
    end
  end
  
  def reverse_transfer
    sender.balance += @amount
    receiver.balance -= @amount
    @status = 'reversed'
  end 
  
end
