class Hot
  def drink
    'coffee'
  end

  def yeet
    'yoot'
  end

  def purchase(number)
    "#{number} price"
  end
end


RSpec.describe Hot do
  it "respond object" do
    expect(subject).to respond_to(:drink, :yeet, :purchase)
    expect(subject).to respond_to(:purchase).with(1).arguments

  end
end
