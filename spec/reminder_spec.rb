require 'reminder'

RSpec.describe Reminder do
  context "when no task is set" do
    it "fails" do
      reminder = Reminder.new("Kay")
      result = reminder.remind()
      expect(result).to eq "No reminder set!"
    end
  end
end
