# A method called make_snippet that takes a string as an argument and 
# returns the first five words and then a '...' if there are more than that.

def make_snippet(string)

  if string.length <= 5
    return string
  
  elsif string.length > 5
    firstfive = string[0, 5]
    return firstfive + "..."
  end
end

=begin
def make_snippet(str)
    if str.split.size <= 5
        return str
    else
        words = str.split
        return words[0,5].join(" ") + "..."
    end
end 
