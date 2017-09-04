require 'statement'

describe Statement do
  subject(:statement) { described_class.new (account) }
  let(:account) { double:account, return_history: [{:date=>"04/09/2017", :credit=>300, :balance=>300}] }

  it "prints the statement for an account" do
    expect(statement.print_statement).to eq account.return_history
  end
end
