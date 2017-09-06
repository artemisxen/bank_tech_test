class Account
  attr_reader :balance, :transactions, :transaction

  MIN_BALANCE = 0

  def initialize(statement = Statement.new)
    @balance = MIN_BALANCE
    @transactions = []
    @transaction = Transaction
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    transactions << transaction.new(credit: amount, balance: balance)
  end

  def withdraw(amount)
    @balance -= amount
    transactions << transaction.new(debit: amount, balance: balance)
  end

  def print_statement
    @statement.print(return_transactions)
  end

  private

  def return_transactions
    transactions.sort_by { |date| }.reverse
  end
end
