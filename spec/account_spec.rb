require 'account'

describe Account do
  subject(:account) { described_class.new(statement) }

  let(:statement) { double:statement, print: '10/7/2017 || 300.00 || || 300.00' }
  let(:deposit_amount) { 500 }
  let(:withdrawal_amount) { 300 }
  let(:negative_amount) { -400 }
  let(:invalid_amount) { 'invalid_amount' }

  context '#initialize' do
    it 'has 0 initial balance' do
      expect(account.balance).to eq described_class::MIN_BALANCE
    end

    it 'starts with empty array of transactions' do
      expect(account.transactions).to be_empty
    end
  end

  # context '#deposit' do
  #   before(:each) { account.deposit(deposit_amount) }
  #
  #   it 'can make a deposit' do
  #     expect(account.balance).to eq deposit_amount
  #   end
  #
  #   it 'stores the deposit data in transactions' do
  #     expect(account.transactions.length).to eq 1
  #   end
  #
  # end

  context '#withdraw' do
    before(:each) do
      account.deposit(deposit_amount)
      account.withdraw(withdrawal_amount)
    end

    it 'can make a withdrawal' do
      expect(account.balance).to eq 200
    end

    it 'stores the withdrawal data in transactions' do
      expect(account.transactions.length).to eq 2
    end

  end

  context '#print_statement' do
    it 'prints the account statement' do
      account.print_statement
      expect(statement).to have_received(:print)
    end
  end
end
