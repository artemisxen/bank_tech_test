class Transaction

  def initialize(credit: '', debit: '', balance: )
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def date
    date_format
  end

  def credit
    @credit
  end

  def debit
    @debit
  end

  def balance
    @balance
  end

  private

  def date_format
    Time.now.strftime('%d/%m/%Y')
  end

end
