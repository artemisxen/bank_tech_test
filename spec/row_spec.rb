require 'row'

describe Row do
  subject(:row) { described_class.new}

  let(:deposit) { { date: '10/09/2017', credit: 300, balance: 300 } }
  let(:output) { "10/09/2017 || 300.00 ||  || 300.00" }

  it 'returns the display format of the transaction' do
    expect(row.display_transaction(deposit)).to eq output
  end
end
