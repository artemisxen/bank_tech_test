class Account
  attr_reader :balance, :transactions

  MIN_BALANCE = 0

  def initialize(statement = Statement.new)
    @balance = MIN_BALANCE
    @transactions = []
    @statement = statement
  end

  def deposit(amount)
    raise 'Invalid amount!' unless numeric(amount)
    raise "The amount can't be negative!" if amount < MIN_BALANCE
    @balance += amount
    transactions << { date: date, credit: amount, balance: balance }
  end

  def withdraw(amount)
    raise 'Invalid amount!' unless numeric(amount)
    raise "The amount can't be negative!" if amount < MIN_BALANCE
    raise 'Not enough balance!' if amount > @balance
    @balance -= amount
    transactions << { date: date, debit: amount, balance: balance }
  end

  def print_statement
    @statement.print(return_transactions)
  end

  private

  def date
    Time.now.strftime('%d/%m/%Y')
  end

  def return_transactions
    transactions.sort_by { |h| h[:date] }.reverse
  end

  def numeric(amount)
    amount.is_a? Numeric
  end

end
