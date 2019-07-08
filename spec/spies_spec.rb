RSpec.describe 'spies' do
  let(:animal) { spy('animal')}

  it 'confirm that a message has been recevied' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
  end
end
