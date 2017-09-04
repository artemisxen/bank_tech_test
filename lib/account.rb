class Account
  attr_reader :balance, :history

  def initialize(statement = Statement.new)
    @balance = 0
    @history = []
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @history << { date: date, credit: amount, balance: balance }
  end

  def withdraw(amount)
    raise 'Sorry, not enough balance!' if amount > @balance
    @balance -= amount
    @history << { date: date, debit: amount, balance: balance }
  end

  def print_statement
    @statement.print(return_history)
  end

  private

  def date
    Time.now.strftime('%d/%m/%Y')
  end

  def return_history
    @history.sort_by { |h| h[:date] }.reverse
  end
end
