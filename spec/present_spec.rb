require "present"

describe Present do
  describe "wrap method" do
    it "fails when we call the wrap method a second time" do
      present1 = Present.new
      present1.wrap("Book")
      expect{ present1.wrap("Ipad") }.to raise_error "A contents has already been wrapped."
    end
  end
  describe "unwrap method" do
    it "fails when mo contents have been wrapped." do
      present1 = Present.new
      expect{ present1.unwrap }.to raise_error "No contents have been wrapped."
    end  
  end 
end
