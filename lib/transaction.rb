class Transaction
  def initialize(credit: nil, debit: nil, balance: )
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def date
    Time.now.strftime('%d/%m/%Y')
  end
end
