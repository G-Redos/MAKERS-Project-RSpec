RSpec.describe "greet" do
    context "given an empty string" do
    it "just puts Hello" do
    result = greet("")
    expect(result).to eq("Hello")
    end
end
