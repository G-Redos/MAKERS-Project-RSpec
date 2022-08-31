#As a user
#So that I can keep track of my tasks
#I want to check if a text includes the string #TODO

require "task_tracker.rb"


# task_tracker("walk the dog") => false
RSpec.describe "#task_tracker" do
  it "returns false if #TODO is not present in text" do
    result = task_tracker("walk the dog")
    expect(result).to eq false
  end
# task_tracker("#TODO walk the cat") => true
  it "returns 'true' if #TODO is present in the text" do
    result = task_tracker("#TODO walk the cat")
    expect(result).to eq true
  end
# task_tracker("#todo walk the cat") => false
  it "returns 'false' if '#todo' is present in the text" do
    result = task_tracker("#todo walk the cat")
    expect(result).to eq false
  end
end
