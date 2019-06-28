RSpec.describe 'satisy matcher' do
  subject { 'racecar' }

  it "is palidroke" do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it "has custom message" do
    expect(subject).to satisfy('be palindrome') { |value| value == value.reverse }
  end
end
