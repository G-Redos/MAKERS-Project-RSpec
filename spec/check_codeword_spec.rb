require 'check_codeword'


RSpec.describe "check_codeword" do
    context "if given an empty string" do
        it "returns WRONG!" do
            result = check_codeword("")
            expect(result).to eq("WRONG!")
            
        end
    end

    context "if given horse" do
        it "returns Correct! Come in." do
            result = check_codeword("horse")
            expect(result).to eq("Correct! Come in.")        
        end
    end

    context "if given house" do
        it "returns Close, but nope." do
            result = check_codeword("house")
            expect(result).to eq("Close, but nope.")        
        end
    end
    


end