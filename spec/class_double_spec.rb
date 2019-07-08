class Deck
  def self.build
    # Build Card
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methids that are defined on a class' do
    deck_klass = class_double(Deck, build: %w[Ace Queen]).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(%w[Ace Queen])
  end
end
