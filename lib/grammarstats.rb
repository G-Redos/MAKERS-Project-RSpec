class GrammarStats
  def initialize
    @checked = 0
    @passed = 0
  end

  def check(text) 
    @checked += 1
    # arr = text.split("")
    # ("A".."Z").include?(arr[0]) && (".").include?(arr[-1])
    if text[0].upcase == text[0] && (".").include?(text[-1])
      @passed += 1
      return true 
    else 
      return false
    end
    # (text[0].match?(/[A-Z]/)) && ".?!".include?(text[-1])
  end

  def percentage_good
    percentage = ((@passed.to_f / @checked.to_f) * 100)
    return percentage
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end