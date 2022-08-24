require "make_snippet"

#test it when given an empty string
#test it when given a string with 5 words
#test it when given an string with more than 5 words

describe "make snippet" do
  it "takes an empty string" do
    result = make_snippet("")
    expect(result).to eq ""
  end
  
  it "takes a string and returns first 5 words" do
    result = make_snippet("12345")
    expect(result).to eq ("12345")
  end

  it "takes a string with 7 words and returns first 5 words and ..." do
    result = make_snippet("1234567")
    expect(result).to eq ("12345...")
  end
end
