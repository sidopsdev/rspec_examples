class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Dude', 'Yeet') do
    it 'check for object attribute and proper value' do
      expect(subject).to have_attributes(name: 'Dude')
    end
  end
end
