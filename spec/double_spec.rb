RSpec.describe 'a random double' do
  it "only allows defined methods to be in be invoked" do
    student = double("Mr. Danger", fail_class: 'F')
    expect(student.fail_class).to eq('F')

    student = double("Mr. Danger")
    allow(student).to receive(:fail_class).and_return('F')
    expect(student.fail_class).to eq('F')

    student = double("Mr. Danger")
    allow(student).to receive_messages(fail_class: 'F')
    expect(student.fail_class).to eq('F')

  end
end
