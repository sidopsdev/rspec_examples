RSpec.describe 25 do

  it 'can test for multip matcher' do
    expect(subject).to be_odd.and be>20
  end
  # .or
end
