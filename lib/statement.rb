class Statement
  def print(transactions)
    puts ' date || credit || debit || balance '
    transaction_output(transactions)
  end

  private

  def transaction_output(transactions)
    transactions.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
  end
end
