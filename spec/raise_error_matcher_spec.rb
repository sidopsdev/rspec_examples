RSpec.describe 'raise matchers matchers' do

  def method_name
    x
  end

  it 'can check for specific error' do
    expect { method_name }.to raise_error(NameError)
  end
end
