RSpec.describe 'describe predicate method and predicate matchers' do
  it 'can be tested with Ruby method' do
    result = 16/2
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    expect(16/2).to be_even
  end
end
