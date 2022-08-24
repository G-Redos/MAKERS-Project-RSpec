require "reading_time"


describe " reading_time " do
  it "given an empty string" do
    result = reading_time("")
    expect(result).to eq 0
  end

  it "given one word" do
    result = reading_time("one.")
    expect(result).to eq 1
  end

  it "given 200 word" do
    result = reading_time("one. " * 200)
    expect(result).to eq 1
  end

  it "given 300 word" do
    result = reading_time("one. " * 300)
    expect(result).to eq 2
  end

  it "given 5000 word" do
    result = reading_time("one. " * 5000)
    expect(result).to eq 25
  end
end

#oneoneoneone.split => [oneoneone]

#(one one one one one).split => [[one] [one] [one]]