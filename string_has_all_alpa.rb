# Write a function that takes a string
# and returns true if the string includes all the letters in the alphabet
# and false otherwise
# "the quick brown fox jumps over the lazy dog"

def string_has_all_letters(str)
  result = {}
  str.each_char do |c|
    return true if result.length == 26
    if c == " "
      next
    elsif !result.include?(c)
      result[c] = c
    end
  end
  result.length == 26 ? true : false
end
