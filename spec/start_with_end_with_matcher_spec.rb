RSpec.describe 'start_with and end_with matcher' do
  describe 'caterpillar' do
    it 'should check for substring ar the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('ar')
    end

    it { is_expected.to start_with('cat') }
  end
end
