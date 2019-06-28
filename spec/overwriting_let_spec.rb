class ProgrammingLanguage

  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Elixir') }

  it 'should store the name of the language' do
    expect(language.name).to eq('Elixir')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }

    it 'should default to Ruby' do
      expect(language.name).to eq('Ruby')
    end
  end
end
