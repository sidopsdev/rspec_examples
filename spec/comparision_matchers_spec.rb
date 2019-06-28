RSpec.describe 'comparision matchers' do
  it 'allows for comparison with bulit in operator' do
    expect(10).to be > 5
  end

  describe 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }
  end
end
