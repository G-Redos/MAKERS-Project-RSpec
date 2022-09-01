=begin
def say_hello(name)
    return "hello #{name}"
  end
  
  # Intended output:
  #
puts say_hello("kay")
  # => "hello kay"
=end

def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  # p "cipher starts #{key.chars.uniq}"
  # p "second pard of cipher #{('a'..'z').to_a}"
  
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
    # p "creates ciphertext chars #{char}"
    # p "what is it #{cipher.find_index(char)}"
  end
  return ciphertext_chars.join
  # p " returns cipher text chars #{ciphertext_chars}"
end
  
def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  # p "what is cipher #{cipher[0]}"
  plaintext_chars = ciphertext.chars.map do |char|
    # p "prints out #{char}"
    # cipher[65 - char.ord]  # cipher[0]
    cipher[char.ord - 65]
  end
  return plaintext_chars.join
end

#  a  b  c  d  e
  #  0  1  2  3  4

  #  s  a  z  n  f
  #  0  1  2  3  4
  #                 + 65
  # 65 66 67 68 69  # capital letters
                    # - 65








  # Intended output:
  #
# puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"