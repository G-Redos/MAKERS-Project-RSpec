require "rspec_practise"

describe "times_two_add_5" do
  it "Is the result 15" do
    number = times_two_add_5(5)
    expect(number).to eq 15
  end
end
