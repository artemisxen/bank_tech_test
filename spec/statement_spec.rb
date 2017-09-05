require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:transactions) { [{ date: '10/09/2017', credit: 300, balance: 300 }] }

  it 'prints the statement for an account' do
    expect { statement.print(transactions) }.to output("date || credit || debit || balance \n10/09/2017 || 300.00 ||  || 300.00\n").to_stdout
  end
end
