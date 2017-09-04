class Account

  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    @balance += amount
    @history << { :date => Time.now.strftime("%d/%m/%Y") , :credit => amount, :balance => balance }
  end

  def withdraw(amount)
    raise "Sorry, not enough balance!" if amount > @balance
    @balance -= amount
    @history << { :date => Time.now.strftime("%d/%m/%Y"), :debit => amount, :balance => balance }
  end

  def return_history
    @history.sort_by { |h| h[:date] }.reverse
  end

end
