require 'statement'
describe Statement do
  let(:account) { double :account }
  subject :statement {described_class.new(account)}

  it 'should accept an account on instantiation' do
    expect(statement.account).to eq account
  end

end
