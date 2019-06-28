RSpec.describe 'contain exactly matcher' do
  subject { [1,2,3] }

  describe 'long from syntax' do
    it 'should check for the presnece of all the elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(3, 2, 1)
    end
  end

  it { is_expected.to contain_exactly(3, 2, 1) }
end
