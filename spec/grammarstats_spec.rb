require "grammarstats"

describe GrammarStats do
  describe "#check" do
    it "returns false when passed 'my name is Jonas'" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("my name is Jonas")).to eq false
    end

    it "returns false when passed 'My name is Jonas'" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("My name is Jonas")).to eq false
    end

    it "returns true when passed 'My name is Jonas.'" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("My name is Jonas.")).to eq true
    end
  end

  describe "percentage_good" do
    it "returns 50% if 1 out of 2 tests passed." do
      grammar_stats = GrammarStats.new
      grammar_stats.check("Coding is cool.")
      grammar_stats.check("Makers is lame")
      expect(grammar_stats.percentage_good).to eq 50
    end

    it "returns 100% if 3 of of 3 test pass" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("No mistakes made.")
      grammar_stats.check("This is correct.")
      grammar_stats.check("Hi.")
    end

    it "returns 0% if 0 out of 4 tests passes" do
      grammar_stats = GrammarStats.new
      grammar_stats.check("mIstaKe.")
      grammar_stats.check("No GRAMMAR")
      grammar_stats.check("i am sooo stupid ;)")
      grammar_stats.check("Ffs")
    end
  end
end