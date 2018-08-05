class ExitError < StandardError

end

class InvalidSlotError < StandardError
  def initialize
    super("This Slot Does Not Exist")
  end
end

class SlotTakenError < StandardError
  def initialize
    super("This Slot Is Taken")
  end
end