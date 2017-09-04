class Account

  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(amount)
    @balance += amount
    @history << { :date => date , :credit => amount, :balance => balance }
  end

  def withdraw(amount)
    raise "Sorry, not enough balance!" if amount > @balance
    @balance -= amount
    @history << { :date => date , :debit => amount, :balance => balance }
  end

  def return_history
    @history.sort_by { |h| h[:date] }.reverse
  end

  private
  def date
    date =  Time.now.strftime("%d/%m/%Y")
  end

end
