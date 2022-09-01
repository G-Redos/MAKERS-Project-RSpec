class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common() 
    counter = Hash.new(0) #fix
    most_common = nil 
    most_common_count = 1
    @text.chars.each do |char|
      next unless is_letter?(char) 
      counter[char] = (counter[char]) + 1  # fix
      if counter[char] > most_common_count
        most_common = char
        most_common_count = counter[char] #fix
      end
    end
    return [most_common_count, most_common]
    binding.irb
  end

  private # lookup

  def is_letter?(letter)
    return letter =~ /[a-z]/i  #check if correct
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common