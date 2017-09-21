require 'row'

describe Row do
  subject(:row) { described_class.new }

  let(:transaction) { double :transaction, date: '10/07/2017', debit: nil, credit: 300, balance: 300 }
  let(:output) { '10/07/2017 || 300.00 ||  || 300.00' }

  it 'returns the display format of the transaction' do
    expect(row.display_transaction(transaction)).to eq output
  end
end
