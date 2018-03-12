class BankAccount
  attr_accessor :holder_name, :type
  attr_reader :amount, :account_number

  def initialize(input_holder_name, input_type, input_amount = 0)
    @holder_name = input_holder_name
    @amount = input_amount
    @type = input_type
    @transactions = []
  end

  def deposit(money_to_deposit)
    @amount += money_to_deposit

    log = {
      name: @holder_name,
      amount: money_to_deposit
    }
    @transactions.push(log)
  end

  def withdraw(money_to_withdraw)
    @amount -= money_to_withdraw
    log = {
      name: @holder_name,
      amount: money_to_withdraw
    }
    @transactions.push(log)
  end

  def print_statement()
    return @transactions
  end

end
