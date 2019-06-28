RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'after context'
  end

  context 'multiply' do
    it 'is just a random example' do
      expect(5 * 4).to eq(20)
    end
  end

  context 'add' do
    it 'is just a another random example' do
      expect(5 + 5).to eq(10)
    end
  end
end
