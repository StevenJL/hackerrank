# Write a method that takes as input a string such as AAABBCDDA and
# returns another string such as A3B2C1D2A1. Instead of repeating
# the same characters, we'll now indicate how many times each
# character was repeated.

def string_compression(str)
  str_array = str.split("")
  current_letter = str_array.first
  output = [current_letter]
  current_count = 1

  indx = 1
  while indx < str_array.length
    if current_letter == str_array[indx]
      current_count += 1
    else
      output << current_count unless current_count == 1
      current_count = 1
      current_letter = str_array[indx]
      output << current_letter
    end
    indx += 1
  end
  output.join("")
end

puts string_compression("aaabddddceefg")

