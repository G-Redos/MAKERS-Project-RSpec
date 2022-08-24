def reading_time(text)
  words = text.split
  return (words.count / 200.to_f).ceil
end

# supercalifragilisticexpialidocious