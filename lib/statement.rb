class Statement

  def initialize(account)
    @account = account
  end

  def print_statement
    puts " date || credit || debit || balance "
    @account.return_history.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
  end
  
end
