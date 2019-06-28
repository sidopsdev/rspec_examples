RSpec.describe 'all matchers' do
  it 'allow for aggregate checks' do
    expect([5,7,9]).to all(be_odd)
  end
end
