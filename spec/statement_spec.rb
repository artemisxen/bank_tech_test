require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  let(:transaction) { double :transaction, date: '10/07/2017', debit: nil, credit: 300, balance: 300 }
  let(:transactions) { [transaction] }

  it 'prints the statement for an account' do
    expect { statement.print(transactions) }.to output("date || credit || debit || balance\n10/07/2017 || 300.00 ||  || 300.00\n").to_stdout
  end
end
