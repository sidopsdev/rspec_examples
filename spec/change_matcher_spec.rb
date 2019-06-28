RSpec.describe 'change matcher' do
  subject { [1,2,3] }

  it 'checks that a method chages object state' do
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  it 'accept negative arguments' do
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end
