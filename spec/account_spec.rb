require 'account'

describe Account do
  subject(:account) { described_class.new(statement) }
  let(:statement) { double:statement, print: '10/7/2017 || 300 || || 300' }
  let(:deposit_amount) { 500 }
  let(:withdrawal_amount) { 300 }

  context '#initialize' do
    it 'has 0 initial balance' do
      expect(account.balance).to eq 0
    end

    it 'starts with empty history' do
      expect(account.history).to be_empty
    end
  end

  context '#deposit' do
    before(:each) { account.deposit(deposit_amount) }

    it 'can make a deposit' do
      expect(account.balance).to eq deposit_amount
    end

    it 'stores the deposit data in history' do
      expect(account.history.length).to eq 1
    end
  end

  context '#withdraw' do
    before(:each) do
      account.deposit(deposit_amount)
      account.withdraw(withdrawal_amount)
    end

    it 'can make a withdrawal' do
      expect(account.balance).to eq 200
    end

    it 'stores the withdrawal data in history' do
      expect(account.history.length).to eq 2
    end

    it "can't withdraw amount less than the balance" do
      expect { account.withdraw(withdrawal_amount) }.to raise_error('Sorry, not enough balance!')
    end
  end

  context '#print_statement' do
    it 'prints the account statement' do
      expect(account.print_statement).to eq statement.print
    end
  end
end
