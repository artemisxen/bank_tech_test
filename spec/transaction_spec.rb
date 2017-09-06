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

  it 'returns the credit' do
    expect(transaction.credit).to eq credit
  end

  it 'returns the debit' do
    expect(transaction.debit). to eq debit
  end

  it 'returns the balance' do
    expect(transaction.balance). to eq balance
  end
end
