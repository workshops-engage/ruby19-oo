class BankAccount
  attr_reader :money
  @@accounts = []
  def initialize money
    @money = money
    @@accounts << self
  end
  def self.accounts
    @@accounts
  end
  def self.open money
    new money
  end
end

# account = BankAccount.open(100)