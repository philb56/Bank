require 'statement'
describe Statement do
  let(:account) { double :account, balance: 1 }
  subject :statement {described_class.new(account)}

  it 'should accept an account on instantiation' do
    expect(statement.account).to eq account
  end

  it "should be able to output a header" do
    expect(statement.header).to eq 'date || credit || debit || balance' + "\n"
  end

end
