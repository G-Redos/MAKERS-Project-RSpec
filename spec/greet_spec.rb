require 'greet'

RSpec.describe "greet" do
    context "given an empty string" do
        it "just puts Hello, !" do
        result = greet("")
        expect(result).to eq("Hello, !")
        end
    end
    context "given the name Moses" do
        it "puts Hello, Moses!" do
        result = greet("Moses")
        expect(result).to eq("Hello, Moses!")
        end
    end
end