class Account
  attr_reader :balance, :transactions

  MIN_BALANCE = 0

  def initialize(statement = Statement.new)
    @balance = MIN_BALANCE
    @transactions = []
    @statement = statement
    @transaction = Transaction
  end

  def deposit(amount)
    @balance += amount
    transactions << @transaction.new(credit: amount, balance: @balance)
  end

  def withdraw(amount)
    @balance -= amount
    transactions << @transaction.new(debit: amount, balance: @balance)
  end

  def print_statement
    @statement.print(return_transactions)
  end

  private

  def return_transactions
    transactions.sort_by { |h| h[:date] }.reverse
  end

end
