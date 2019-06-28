RSpec.describe 'include matcher' do
  describe 'hot choco' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
    end
  end

  describe(a: 2, b: 4) do
    it 'can check for key existence' do
      expect(subject).to include(:a)
    end

    it 'can check for key-value existence' do
      expect(subject).to include(a: 2)
    end
  end
end
