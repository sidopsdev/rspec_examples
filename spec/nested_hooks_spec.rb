RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  # after(:exam) do
  #   puts 'after context'
  # end

  it 'does basic maths' do
    expect(5 * 4).to eq(20)
  end

  context 'with condition A' do
    before(:context) do
      puts 'Inner Before context'
    end

    before(:example) do
      puts 'Inner Before example'
    end

    it 'does more basic maths' do
      expect(5 * 5).to eq(25)
    end

    it 'does add' do
      expect(5 + 5).to eq(10)
    end
  end
end
