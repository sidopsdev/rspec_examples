class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I luv you'
  end

  def fall_of_ladder
    '*dies*'
  end

  def lights_on_fire
    false
  end
end


class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_of_ladder
      actor.lights_on_fire
      actor.act
    end
  end
end


RSpec.describe Movie do
  let(:stuntman) { double("Danger", ready?: true, act: 'yeet', fall_of_ladder: 'ok', lights_on_fire: true) }
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it "expect to do 3 actions" do

      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act).twice
      expect(stuntman).to receive(:fall_of_ladder)
      expect(stuntman).to receive(:lights_on_fire)

      subject.start_shooting
    end
  end
end


RSpec.describe Actor do

end
