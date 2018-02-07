# A phone's number pad has letters
num_to_letters = {
  2 => ["A", "B", "C"],
  3 => ["D", "E", "F"],
  4 => ["G", "H", "I"],
  5 => ["J", "K", "L"],
  6 => ["M", "N", "O"],
  7 => ["P", "Q", "R", "S"],
  8 => ["T", "U", "V"],
  9 => ["W", "X", "Y", "Z"],
}

# Write a function that takes a number and generates
# all the possible words that can be made from it.

def get_words(number)

end

def combinate(char_array1, char_array2)
  char_array1.map do |char1|
    char_array2.map {|char2| char1 + char2 }
  end
end


