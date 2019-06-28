RSpec.describe 'math calculations' do
    it 'does basic math' do
        expect(1+2).to eq(3)
        expect(2*2).to eq(4)
        expect(400+20).to eq(420)
        expect(70-1).to eq(69)
        expect(1/2).to eq(0)
    end
end
