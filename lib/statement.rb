class Statement
  def print(transactions)
    puts ' date || credit || debit || balance '
    transaction_output(transactions)
  end

  private

  def transaction_output(transactions)
    transactions.each do |transaction|
      credit = return_float(transaction[:credit]) if transaction[:credit]
      debit = return_float(transaction[:debit]) if transaction[:debit]
      balance = return_float(transaction[:balance])
      puts "#{transaction[:date]} || #{credit} || #{debit} || #{balance}"
    end
  end

  def return_float(number)
    '%.2f' % number
  end
end
