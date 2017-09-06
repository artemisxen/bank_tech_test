class Row
  def display_transaction(transaction)
    "#{date(transaction)} || #{credit(transaction)} || #{debit(transaction)} || #{balance(transaction)}"
  end

  private

  def date(transaction)
    transaction.date
  end

  def credit(transaction)
    return_float(transaction.credit) if transaction.credit
  end

  def debit(transaction)
    return_float(transaction.debit) if transaction.debit
  end

  def balance(transaction)
    return_float(transaction.balance) if transaction.balance
  end

  def return_float(number)
    '%.2f' % number
  end
end
