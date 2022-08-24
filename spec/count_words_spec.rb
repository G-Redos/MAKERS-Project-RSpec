require "count_words"

# 1 empty string test

describe "a method that counts words in the string" do
  it "takes an empty string" do
    result = count_words("")
    expect(result).to eq 0
  end

  # 2 how many words in the string test
  it "takes an empty string" do
    result = count_words("this is a test")
    expect(result).to eq 4
  end
end
