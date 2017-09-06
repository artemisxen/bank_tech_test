require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new(credit: credit, debit: debit, balance: balance) }
  let(:date) { '10/07/2017' }
  let(:credit) { 300 }
  let(:debit) { 100 }
  let(:balance) { 200 }

  it 'returns the date' do
    allow(Time).to receive(:now).and_return (Time.new(2017,07,10))
    expect(transaction.date).to eq date
  end
end
