# falsy values -  false, nil
# truthy values - everything else
# be_truthy
# be_falsy
# be_nil

RSpec.describe 'be matchers' do
  it 'can check for truthiness' do
    expect([5,7,9]).to all(be_truthy)
  end
end
