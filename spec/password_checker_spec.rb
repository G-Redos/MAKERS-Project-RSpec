require "password_checker"

describe PasswordChecker do
  describe "check method" do
    it "fails when password is less than 8 characters" do
      pwchecker = PasswordChecker.new
    expect{ pwchecker.check("test") }.to raise_error "Invalid password, must be 8+ characters."
    end  
  end   
end
