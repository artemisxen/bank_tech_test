class Statement

  def initialize
    @row = Row.new
  end

  def print(transactions)
    puts 'date || credit || debit || balance'
    puts transaction_output(transactions)
  end

  private

  def transaction_output(transactions)
    transactions.map do |transaction|
      @row.display_transaction(transaction)
    end
  end

end
